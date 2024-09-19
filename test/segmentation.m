clear 
close 
clc

FS = 1000; %sampling rate
TS = 1/FS; % time period
no_task = 3; % No of tasks
task_len_sec = 6;  % Duration of each task in seconds
task__len_smp = task_len_sec * FS;  % Task duration in samples
cycle_len_smp = task__len_smp * no_task;  % Total duration of one cycle in samples
tasl_list = {'Rest', 'Hold', 'Lift'};

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

% time for signals
for i = 1:6
    len = length(FCR_nW{i});
    ts_nW{i} = 0:TS:(len-1)/FS;
    len = 0;
end

for i = 1:6
    len = length(FCR_W{i});
    ts_W{i} = 0:TS:(len-1)/FS;
    len = 0;
end

%% Butterworth filter

fnyq = FS/2;  % Nyquist frequency
fcutlow = 450;
fcuthigh = 20;
fnotch = 50;
Q = 20;

% To store filtered data
no_FCRnW = cell(6,1);
no_FCRW = cell(6,1);
no_FDSnW = cell(6,1);
no_FDSW = cell(6,1);

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

seg_winlen = 250; % Length of the moving window in milliseconds
overlap = 90; % Overlap percentage

seg_samplen = round(seg_winlen * FS / 1000); % Convert window length from milliseconds to samples
increment = round(seg_samplen * (1 - overlap / 100)); % Calculate the increment (step size) based on the overlap
 for k = 1:6
    buffer0 =  flt_FCRnW{k};
    buffer1 = flt_FDSnW{k};
    buffer2 = flt_FCRW{k};
    buffer3 = flt_FDSW{k};
    % Calculate the number of windows
    num_windows0 = floor((length(buffer0) - seg_samplen) / increment) + 1;
    num_windows1 = floor((length(buffer2) - seg_samplen) / increment) + 1;

    % Initialize an cell to hold the annotations for each segment
    % 1 = Rest, 2 = Holding, 3 = Lifting
    annotation_nW = cell(k);
    annotation_W = cell(k);

    
    for j = 1:num_windows0
        %Calculate the start and end indices of the current window
        start_idx = (j-1)*increment + 1;
        end_idx = start_idx + seg_samplen - 1;
        % Extract the current window from the buffer
        seg_FCRnW{k}{1,j} = buffer0(start_idx:end_idx);
        seg_FDSnW{k}{1,j} = buffer1(start_idx:end_idx);
    end
    
    for j = 1:num_windows1
        %Calculate the start and end indices of the current window
        start_idx = (j-1)*increment + 1;
        end_idx = start_idx + seg_samplen - 1;
        % Extract the current window from the buffer
        seg_FCRW{k}{1,j} = buffer2(start_idx:end_idx);
        seg_FDSW{k}{1,j} = buffer3(start_idx:end_idx);
    end
    buffer0 = 0;
    buffer1 = 0;
    buffer2 = 0;
    buffer3 = 0;
 end

 %% RMS SEGMENT 

rms_seg_FCRnW = cell(6,1);
rms_seg_FCRW = cell(6,1);
rms_seg_FDSnW = cell(6,1);
rms_seg_FDSW = cell(6,1);

for i = 1:6
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

 %% MAV SEGMENT 

mav_seg_FCRnW = cell(6,1);
mav_seg_FCRW = cell(6,1);
mav_seg_FDSnW = cell(6,1);
mav_seg_FDSW = cell(6,1);

for i = 1:6
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
         mav_seg_FCRnW{i}{1,j} = mean(abs(data0));
         mav_seg_FDSnW{i}{1,j} = mean(abs(data1));
         data0 = 0;
         data1 = 0;
     end

     for j = 1:num_windows1
         data0 = buffer2{1,j};
         data1 = buffer3{1,j};
         mav_seg_FCRW{i}{1,j} = mean(abs(data0));
         mav_seg_FDSW{i}{1,j} = mean(abs(data1));
         data0 = 0;
         data1 = 0;
     end
    buffer0 = 0;
    buffer1 = 0;
    buffer2 = 0;
    buffer3 = 0;
end


 %% ZC SEGMENT 

zc_seg_FCRnW = cell(6,1);
zc_seg_FCRW = cell(6,1);
zc_seg_FDSnW = cell(6,1);
zc_seg_FDSW = cell(6,1);

for i = 1:6
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
         zc_seg_FCRnW{i}{1,j} = zerocrossrate(data0);
         zc_seg_FDSnW{i}{1,j} = zerocrossrate(data1);
         data0 = 0;
         data1 = 0;
     end

     for j = 1:num_windows1
         data0 = buffer2{1,j};
         data1 = buffer3{1,j};
         zc_seg_FCRW{i}{1,j} = zerocrossrate(data0);
         zc_seg_FDSW{i}{1,j} = zerocrossrate(data1);
         data0 = 0;
         data1 = 0;
     end
    buffer0 = 0;
    buffer1 = 0;
    buffer2 = 0;
    buffer3 = 0;
end
