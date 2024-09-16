clear 
close 
clc

FS = 1000; %sampling rate
TS = 1/FS; % time period
no_task = 3; % No of tasks
task_len_sec = 6;  % Duration of each task in seconds
task_len_smp = task_len_sec * FS;  % Task duration in samples

%% Load data
% Specify the folder where the files are stored
folderPath_nW = uigetdir();
folderPath_W = uigetdir();

% Get a list of all .mat files in the folder
fileList_nW = dir(fullfile(folderPath_nW, '*.mat'));
fileList_W = dir(fullfile(folderPath_W, '*.mat'));

% Initialize a cell array to hold the loaded EMG data
FCR_nW = cell(length(fileList_nW), 1);
FCR_W = cell(length(fileList_W), 1);
FDS_nW = cell(length(fileList_nW), 1);
FDS_W = cell(length(fileList_W), 1);

ts_nW = cell(6,1);
ts_W = cell(6,1);

% Loop through each file and load the data
for i = 1:length(fileList_nW)
    % Get the full path of the file
    filePath = fullfile(folderPath_nW, fileList_nW(i).name);
    
    % Load the data from the file
    buffer = load(filePath);

    FCR_nW{i} = buffer.data(buffer.datastart(1,1):buffer.dataend(1,1));
    FDS_nW{i} = buffer.data(buffer.datastart(2,1):buffer.dataend(2,1));
    
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_nW(i).name]);
    buffer = 0;
end

% Loop through each file and load the data
for i = 1:length(fileList_W)
    % Get the full path of the file
    filePath = fullfile(folderPath_W, fileList_W(i).name);
    
    % Load the data from the file
    buffer = load(filePath);

    FCR_W{i} = buffer.data(buffer.datastart(1,1):buffer.dataend(1,1));
    FDS_W{i} = buffer.data(buffer.datastart(2,1):buffer.dataend(2,1));
    
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_W(i).name]);
    buffer = 0;
end
% time vector and task lables for signals
for i = 1:6
    len = length(FCR_nW{i});
    ts_nW{i} = 0:TS:(len-1)/FS;
    task_lable_nW{i} = generate_tasklables(len,task_len_smp);
    len = 0;
end

for i = 1:6
    len = length(FCR_W{i});
    ts_W{i} = 0:TS:(len-1)/FS;
    task_lable_W{i} = generate_tasklables(len,task_len_smp);

    len = 0;
end

%% Butterworth filter

fnyq = FS/2;  % Nyquist frequency
fcutlow = 450;
fcuthigh = 20;
fnotch = 50;
Q = 20;

% To store filtered data
no_FCRnW{i} = cell(6,1);
no_FCRW{i} = cell(6,1);
no_FDSnW{i} = cell(6,1);
no_FDSW{i} = cell(6,1);

flt_FCRnW = cell(6,1);
flt_FCRW = cell(6,1);
flt_FDSnW = cell(6,1);
flt_FDSW = cell(6,1);

% 50Hz Notch filter
wo = fnotch/fnyq;  
bw = wo/Q;
[x,y] = iirnotch(wo,bw);

% 4th order butterworth bandpass filter
[a,b] = butter(4,[fcuthigh,fcutlow]/fnyq,"bandpass");


for i=1:6
    
    % Apply notch filter
    no_FCRnW{i} = filtfilt(x,y,FCR_nW{i});
    no_FCRW{i} = filtfilt(x,y,FCR_W{i});
    no_FDSnW{i} = filtfilt(x,y,FDS_nW{i});
    no_FDSW{i} = filtfilt(x,y,FDS_W{i});

    % Apply bandpass filter
    flt_FCRnW{i} = filtfilt(a,b,no_FCRnW{i});
    flt_FCRW{i} = filtfilt(a,b,no_FCRW{i});
    flt_FDSnW{i} = filtfilt(a,b,no_FDSnW{i});
    flt_FDSW{i} = filtfilt(a,b,no_FDSW{i});

end

%% Segmentation
seg_FCRnW = cell(6,1);
seg_FCRW = cell(6,1);
seg_FDSnW = cell(6,1);
seg_FDSW = cell(6,1);
annot = zeros(6,1);

seg_winlen = 250; % Length of the moving window in milliseconds
overlap = 90; % Overlap percentage


for k = 1:6
    buffer0 =  flt_FCRnW{k};
    buffer1 = flt_FDSnW{k};
    buffer2 = flt_FCRW{k};
    buffer3 = flt_FDSW{k};
    seg_FCRnW{k} = segment_signal(buffer0,seg_winlen,overlap,FS);
    annot = label_segment(buffer0,seg_winlen,overlap, task_lable_nW{k},FS);
end



%%
function task_labels = generate_tasklables(signal_len_samples,task_len_samples)
task_list = {"REST", "HOLD", "LIFT"};
num_task = length(task_list);
cycle_len_smp = task_len_samples * num_task;  % Total duration of one cycle in samples

% Calculate the total number of cycles in the signal
num_cycles = floor(signal_len_samples / cycle_len_smp);

% Initialize the task label array
%task_labels = arr(signal_len_samples, 1);

% Loop through each cycle and assign task labels
for cycle = 1:num_cycles
    rest_idx = (cycle - 1) * cycle_len_smp + 1;
    task_labels(rest_idx : rest_idx + task_len_samples -1) = 1;

   hold_idx = rest_idx + task_len_samples;
   task_labels(hold_idx : hold_idx + task_len_samples -1) = 2;

   lift_idx = hold_idx + task_len_samples;
   task_labels(lift_idx : lift_idx + task_len_samples -1) = 3;
end

% Handle remaining samples that do not complete a full cycle
remaining_samples = signal_len_samples - num_cycles * cycle_len_smp;

    if remaining_samples > 0
        remaining_idx = num_cycles * cycle_len_smp + 1;
        
        % Assign Rest (1) for the first remaining task
        task_labels(remaining_idx:min(remaining_idx + task_len_samples - 1, signal_len_samples)) = 1;
    end
        
        % If more samples are left, assign Holding (2)
        if remaining_samples > task_len_samples
            hold_start_idx = remaining_idx + task_len_samples;
            task_labels(hold_start_idx:min(hold_start_idx + task_len_samples - 1, signal_len_samples)) = 2;
        end
        
        % If even more samples are left, assign Lifting (3)
        if remaining_samples > 2 * task_len_samples
            lift_start_idx = hold_start_idx + task_len_samples;
            task_labels(lift_start_idx:signal_len_samples) = 3;
        end
    end

function seg_data = segment_signal(signal, window_length, overlap, fs)

seg_samplen = round(window_length * fs / 1000); % Convert window length from milliseconds to samples
increment = round(seg_samplen * (1 - overlap / 100)); % Calculate the increment (step size) based on the overlap
num_windows = floor((length(signal) - seg_samplen) / increment) + 1; % Calculate the number of windows
seg_data = cell(1,num_windows);

for j = 1:num_windows
        %Calculate the start and end indices of the current window
        start_idx = round((j-1)*increment) + 1;
        end_idx = start_idx + seg_samplen - 1;
        % Extract the current window from the buffer
        seg_data{1,j} = signal(start_idx:end_idx);
end
end

function label_data = label_segment(signal, window_length, overlap,task_label,fs)

seg_samplen = round(window_length * fs / 1000); % Convert window length from milliseconds to samples
increment = round(seg_samplen * (1 - overlap / 100)); % Calculate the increment (step size) based on the overlap
num_windows = floor((length(signal) - seg_samplen) / increment) + 1; % Calculate the number of windows
annotations = zeros(1,num_windows);

for i = 1:num_windows
    % Calculate start and end indices of the current window
    start_idx = round((i-1) * increment) + 1;
    end_idx = start_idx + seg_samplen - 1;
    
    if end_idx > length(signal)
        end_idx = length(signal);
    end

    % Check the majority label within the window
    segment_labels = task_label(start_idx:end_idx);
    majority_label = mode(segment_labels);  % Mode function gives the most frequent label
    
    % Assign the majority label to this segment
    annotations(1,i) = majority_label;
    label_data = annotations;
end
end

