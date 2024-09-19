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
folderPath_lW = uigetdir();
folderPath_mW = uigetdir();
folderPath_hW = uigetdir();

% Get a list of all .mat files in the folder
fileList_nW = dir(fullfile(folderPath_nW, '*.mat'));
fileList_lW = dir(fullfile(folderPath_lW, '*.mat'));
fileList_mW = dir(fullfile(folderPath_mW, '*.mat'));
fileList_hW = dir(fullfile(folderPath_hW, '*.mat'));

% Initialize a cell array to hold the loaded EMG data
FCR_nW = cell(length(fileList_nW), 1);
FCR_lW = cell(length(fileList_lW), 1);
FCR_mW = cell(length(fileList_mW), 1);
FCR_hW = cell(length(fileList_hW), 1);

FDS_nW = cell(length(fileList_nW), 1);
FDS_lW = cell(length(fileList_lW), 1);
FDS_mW = cell(length(fileList_mW), 1);
FDS_hW = cell(length(fileList_hW), 1);

% Initialize a cell array to hold the time vector
ts_nW = cell(length(fileList_nW), 1);
ts_lW = cell(length(fileList_lW), 1);
ts_mW = cell(length(fileList_mW), 1);
ts_hW = cell(length(fileList_hW), 1);

% Initialize a cell array to hold the lables
tasklable_nW = cell(length(fileList_nW), 1);
tasklable_lW = cell(length(fileList_lW), 1);
tasklable_mW = cell(length(fileList_mW), 1);
tasklable_hW = cell(length(fileList_hW), 1);


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
for i = 1:length(fileList_lW)
    % Get the full path of the file
    filePath = fullfile(folderPath_lW, fileList_lW(i).name);
    
    % Load the data from the file
    buffer = load(filePath);

    FCR_lW{i} = buffer.data(buffer.datastart(1,1):buffer.dataend(1,1));
    FDS_lW{i} = buffer.data(buffer.datastart(2,1):buffer.dataend(2,1));
    
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_lW(i).name]);
    buffer = 0;
end

% Loop through each file and load the data
for i = 1:length(fileList_mW)
    % Get the full path of the file
    filePath = fullfile(folderPath_mW, fileList_mW(i).name);
    
    % Load the data from the file
    buffer = load(filePath);

    FCR_mW{i} = buffer.data(buffer.datastart(1,1):buffer.dataend(1,1));
    FDS_mW{i} = buffer.data(buffer.datastart(2,1):buffer.dataend(2,1));
    
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_mW(i).name]);
    buffer = 0;
end

% Loop through each file and load the data
for i = 1:length(fileList_hW)
    % Get the full path of the file
    filePath = fullfile(folderPath_hW, fileList_hW(i).name);
    
    % Load the data from the file
    buffer = load(filePath);

    FCR_hW{i} = buffer.data(buffer.datastart(1,1):buffer.dataend(1,1));
    FDS_hW{i} = buffer.data(buffer.datastart(2,1):buffer.dataend(2,1));
    
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_hW(i).name]);
    buffer = 0;
end


% time vector and task lables for signals
for i = 1:length(fileList_nW)
    len = length(FCR_nW{i});
    ts_nW{i} = 0:TS:(len-1)/FS;
    tasklable_nW{i} = generate_tasklables(len,task_len_smp);
    len = 0;
end

for i = 1:length(fileList_lW)
    len = length(FCR_lW{i});
    ts_lW{i} = 0:TS:(len-1)/FS;
    tasklable_lW{i} = generate_tasklables(len,task_len_smp);
    len = 0;
end

for i = 1:length(fileList_mW)
    len = length(FCR_mW{i});
    ts_mW{i} = 0:TS:(len-1)/FS;
    tasklable_mW{i} = generate_tasklables(len,task_len_smp);
    len = 0;
end

for i = 1:length(fileList_hW)
    len = length(FCR_hW{i});
    ts_hW{i} = 0:TS:(len-1)/FS;
    tasklable_hW{i} = generate_tasklables(len,task_len_smp);
    len = 0;
end

%% Butterworth filter

fnyq = FS/2;  % Nyquist frequency
fcutlow = 450;
fcuthigh = 20;
fnotch = 50;
Q = 20;

% To store filtered data
no_FCRnW = cell(length(fileList_nW), 1);
no_FCRlW = cell(length(fileList_lW), 1);
no_FCRmW = cell(length(fileList_mW), 1);
no_FCRhW = cell(length(fileList_hW), 1);

no_FDSnW = cell(length(fileList_nW), 1);
no_FDSlW = cell(length(fileList_lW), 1);
no_FDSmW = cell(length(fileList_mW), 1);
no_FDShW = cell(length(fileList_hW), 1);

flt_FCRnW = cell(length(fileList_nW), 1);
flt_FCRlW = cell(length(fileList_lW), 1);
flt_FCRmW = cell(length(fileList_mW), 1);
flt_FCRhW = cell(length(fileList_hW), 1);

flt_FDSnW = cell(length(fileList_nW), 1);
flt_FDSlW = cell(length(fileList_lW), 1);
flt_FDSmW = cell(length(fileList_mW), 1);
flt_FDShW = cell(length(fileList_hW), 1);

% 50Hz Notch filter
wo = fnotch/fnyq;  
bw = wo/Q;
[x,y] = iirnotch(wo,bw);

% 4th order butterworth bandpass filter
[a,b] = butter(4,[fcuthigh,fcutlow]/fnyq,"bandpass");


for i=1:length(fileList_nW)
    % Apply notch filter
    no_FCRnW{i} = filtfilt(x,y,FCR_nW{i});
    no_FDSnW{i} = filtfilt(x,y,FDS_nW{i});
    % Apply bandpass filter
    flt_FCRnW{i} = filtfilt(a,b,no_FCRnW{i});
    flt_FDSnW{i} = filtfilt(a,b,no_FDSnW{i});
end

for i=1:length(fileList_lW)
    % Apply notch filter
    no_FCRlW{i} = filtfilt(x,y,FCR_lW{i});
    no_FDSlW{i} = filtfilt(x,y,FDS_lW{i});
    % Apply bandpass filter
    flt_FCRlW{i} = filtfilt(a,b,no_FCRlW{i});
    flt_FDSlW{i} = filtfilt(a,b,no_FDSlW{i});
end

for i=1:length(fileList_mW)
    % Apply notch filter
    no_FCRmW{i} = filtfilt(x,y,FCR_mW{i});
    no_FDSmW{i} = filtfilt(x,y,FDS_mW{i});
    % Apply bandpass filter
    flt_FCRmW{i} = filtfilt(a,b,no_FCRmW{i});
    flt_FDSmW{i} = filtfilt(a,b,no_FDSmW{i});
end

for i=1:length(fileList_hW)
    % Apply notch filter
    no_FCRhW{i} = filtfilt(x,y,FCR_hW{i});
    no_FDShW{i} = filtfilt(x,y,FDS_hW{i});
    % Apply bandpass filter
    flt_FCRhW{i} = filtfilt(a,b,no_FCRhW{i});
    flt_FDShW{i} = filtfilt(a,b,no_FDShW{i});
end

%% Full-wave Rectification

% To store rectified data
rct_FCRnW = cell(length(fileList_nW), 1);
rct_FCRlW = cell(length(fileList_lW), 1);
rct_FCRmW = cell(length(fileList_mW), 1);
rct_FCRhW = cell(length(fileList_hW), 1);

rct_FDSnW = cell(length(fileList_nW), 1);
rct_FDSlW = cell(length(fileList_lW), 1);
rct_FDSmW = cell(length(fileList_mW), 1);
rct_FDShW = cell(length(fileList_hW), 1);


for i = 1: length(fileList_nW)
    rct_FCRnW{i} = abs(flt_FCRnW{i});
    rct_FDSnW{i} = abs(flt_FDSnW{i});
end

for i = 1: length(fileList_lW)
    rct_FCRlW{i} = abs(flt_FCRlW{i});
    rct_FDSlW{i} = abs(flt_FDSlW{i});
end

for i = 1: length(fileList_mW)
    rct_FCRmW{i} = abs(flt_FCRmW{i});
    rct_FDSmW{i} = abs(flt_FDSmW{i});
end

for i = 1: length(fileList_hW)
    rct_FCRhW{i} = abs(flt_FCRhW{i});
    rct_FDShW{i} = abs(flt_FDShW{i});
end



%% Segmentation and Annotation

% To store segmentes
seg_FCRnW = cell(length(fileList_nW), 1);
seg_FCRlW = cell(length(fileList_lW), 1);
seg_FCRmW = cell(length(fileList_mW), 1);
seg_FCRhW = cell(length(fileList_hW), 1);

seg_FDSnW = cell(length(fileList_nW), 1);
seg_FDSlW = cell(length(fileList_lW), 1);
seg_FDSmW = cell(length(fileList_mW), 1);
seg_FDShW = cell(length(fileList_hW), 1);

label_nW = cell(length(fileList_nW), 1);
label_lW = cell(length(fileList_lW), 1);
label_mW = cell(length(fileList_mW), 1);
label_hW = cell(length(fileList_hW), 1);

seglabel_nW = cell(length(fileList_nW), 1);
seglabel_lW = cell(length(fileList_lW), 1);
seglabel_mW = cell(length(fileList_mW), 1);
seglabel_hW = cell(length(fileList_hW), 1);

seg_winlen = 250; % Length of the moving window in milliseconds
overlap = 90; % Overlap percentage

% segmentation
for i = 1: length(fileList_nW)
    seg_FCRnW{i} = segment_signal(flt_FCRnW{i},seg_winlen, overlap, FS);
    seg_FDSnW{i} = segment_signal(flt_FDSnW{i},seg_winlen, overlap, FS);

end

for i = 1: length(fileList_lW)
    seg_FCRlW{i} = segment_signal(flt_FCRlW{i},seg_winlen, overlap, FS);
    seg_FDSlW{i} = segment_signal(flt_FDSlW{i},seg_winlen, overlap, FS);
end

for i = 1: length(fileList_mW)
    seg_FCRmW{i} = segment_signal(flt_FCRmW{i},seg_winlen, overlap, FS);
    seg_FDSmW{i} = segment_signal(flt_FDSmW{i},seg_winlen, overlap, FS);
end

for i = 1: length(fileList_hW)
    seg_FCRhW{i} = segment_signal(flt_FCRhW{i},seg_winlen, overlap, FS);
    seg_FDShW{i} = segment_signal(flt_FDShW{i},seg_winlen, overlap, FS);
end

% label generation
for i = 1 : length(fileList_nW)
    s_len = length(FCR_nW{i});
    label_nW{i} = generate_tasklables(s_len,task_len_smp);
    s_len = 0;
end

for i = 1 : length(fileList_lW)
    s_len = length(FCR_lW{i}) * FS;
    label_lW{i} = generate_tasklables(s_len,task_len_smp);
    s_len = 0;
end

for i = 1 : length(fileList_mW)
    s_len = length(FCR_mW{i}) * FS;
    label_mW{i} = generate_tasklables(s_len,task_len_smp);
    s_len = 0;
end

for i = 1 : length(fileList_hW)
    s_len = length(FCR_hW{i}) * FS;
    label_hW{i} = generate_tasklables(s_len,task_len_smp);
    s_len = 0;
end

% Segments label generation
for i = 1 : length(fileList_nW)
    seglabel_nW{i} = label_segment(flt_FCRnW{i}, seg_winlen, overlap, label_nW{i}, FS);
end

for i = 1 : length(fileList_lW)
    seglabel_lW{i} = label_segment(flt_FCRlW{i}, seg_winlen, overlap, label_lW{i}, FS);
end

for i = 1 : length(fileList_mW)
    seglabel_mW{i} = label_segment(flt_FCRmW{i}, seg_winlen, overlap, label_mW{i}, FS);
end

for i = 1 : length(fileList_hW)
    seglabel_hW{i} = label_segment(flt_FCRhW{i}, seg_winlen, overlap, label_hW{i}, FS);
end

%% FEATURE EXTRACTION

% RMS
rms_FCRnW = cell(length(fileList_nW), 1);
rms_FCRlW = cell(length(fileList_lW), 1);
rms_FCRmW = cell(length(fileList_mW), 1);
rms_FCRhW = cell(length(fileList_hW), 1);

rms_FDSnW = cell(length(fileList_nW), 1);
rms_FDSlW = cell(length(fileList_lW), 1);
rms_FDSmW = cell(length(fileList_mW), 1);
rms_FDShW = cell(length(fileList_hW), 1);

for i = 1 : length(fileList_nW)
    buffer0 =  seg_FCRnW{i};
    buffer1 = seg_FDSnW{i};
    buffer2 = seg_FCRW{i};
    buffer3 = seg_FDSW{i};
    data0 = 0;
    data1 = 0;
    
    % Get the no.of segmentes of signals
    num_windows0 = length(buffer0);
    num_windows1 = length(buffer2);
    
    for j = 1:num_windows0
         data0 = buffer0{1,j};
         data1 = buffer1{1,j};
         rms_seg_FCRnW{i}{1,j} = sqrt(mean(data0.^2));
         rms_seg_FDSnW{i}{1,j} = sqrt(mean(data1.^2));
         data0 = 0;
         data1 = 0;
     end

     for j = 1:num_windows1
         data0 = buffer2{1,j};
         data1 = buffer3{1,j};
         rms_seg_FCRW{i}{1,j} = sqrt(mean(data0.^2));
         rms_seg_FDSW{i}{1,j} = sqrt(mean(data1.^2));
         data0 = 0;
         data1 = 0;
     end
    buffer0 = 0;
    buffer1 = 0;
    buffer2 = 0;
    buffer3 = 0;
end


%% FUNCTIONS

% Function to generate task labels
function task_labels = generate_tasklables(signal_len_samples,task_len_samples)
task_list = {"REST", "HOLD", "LIFT"};
num_task = length(task_list);
cycle_len_smp = task_len_samples * num_task;  % Total duration of one cycle in samples

% Calculate the total number of cycles in the signal
num_cycles = floor(signal_len_samples / cycle_len_smp);


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

% Function to segments signals
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

% Function to generate lables for segments
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

