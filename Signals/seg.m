clear
close
clc

FS = 1000; %sampling rate
TS = 1/FS; % time period
no_task = 3; % No of tasks
task_len_sec = 6;  % Duration of each task in seconds
task_len_smp = task_len_sec * FS;  % Task duration in samples

%% Load EMG data
% Specify the folder where the files are stored
folderPath_nW = uigetdir();
folderPath_mW = uigetdir();
folderPath_hW = uigetdir();

% Get a list of all .mat files in the folder
fileList_nW = dir(fullfile(folderPath_nW, '*.mat'));
fileList_mW = dir(fullfile(folderPath_mW, '*.mat'));
fileList_hW = dir(fullfile(folderPath_hW, '*.mat'));

% Initialize a cell array to hold the loaded EMG data
fFCR_nW = cell(length(fileList_nW), 1);
fFCR_mW = cell(length(fileList_mW), 1);
fFCR_hW = cell(length(fileList_hW), 1);

fFDS_nW = cell(length(fileList_nW), 1);
fFDS_mW = cell(length(fileList_mW), 1);
fFDS_hW = cell(length(fileList_hW), 1);

% Initialize a cell array to hold the time vector
ts_nW = cell(length(fileList_nW), 1);
ts_mW = cell(length(fileList_mW), 1);
ts_hW = cell(length(fileList_hW), 1);

% Initialize a cell array to hold the lables
tasklable_nW = cell(length(fileList_nW), 1);
tasklable_mW = cell(length(fileList_mW), 1);
tasklable_hW = cell(length(fileList_hW), 1);


% Loop through each file and load the data
for i = 1:length(fileList_nW)
    % Get the full path of the file
    filePath = fullfile(folderPath_nW, fileList_nW(i).name);
    
    % Load the data from the file
    buffer = load(filePath);

    fFCR_nW{i} = buffer.data(buffer.datastart(1,1):buffer.dataend(1,1));
    fFDS_nW{i} = buffer.data(buffer.datastart(2,1):buffer.dataend(2,1));
    
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_nW(i).name]);
    buffer = 0;
end


% Loop through each file and load the data
for i = 1:length(fileList_mW)
    % Get the full path of the file
    filePath = fullfile(folderPath_mW, fileList_mW(i).name);
    
    % Load the data from the file
    buffer = load(filePath);

    fFCR_mW{i} = buffer.data(buffer.datastart(1,1):buffer.dataend(1,1));
    fFDS_mW{i} = buffer.data(buffer.datastart(2,1):buffer.dataend(2,1));
    
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

    fFCR_hW{i} = buffer.data(buffer.datastart(1,1):buffer.dataend(1,1));
    fFDS_hW{i} = buffer.data(buffer.datastart(2,1):buffer.dataend(2,1));
    
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_hW(i).name]);
    buffer = 0;
end


% time vector and task lables for signals
for i = 1:length(fileList_nW)
    len = length(fFCR_nW{i});
    ts_nW{i} = 0:TS:(len-1)/FS;
    tasklable_nW{i} = generate_tasklables(len,task_len_smp);
    len = 0;
end

for i = 1:length(fileList_mW)
    len = length(fFCR_mW{i});
    ts_mW{i} = 0:TS:(len-1)/FS;
    tasklable_mW{i} = generate_tasklables(len,task_len_smp);
    len = 0;
end

for i = 1:length(fileList_hW)
    len = length(fFCR_hW{i});
    ts_hW{i} = 0:TS:(len-1)/FS;
    tasklable_hW{i} = generate_tasklables(len,task_len_smp);
    len = 0;
end

%% Extract 72 sec of signals
no_samp = 72*1000;

FCR_nW = cell(length(fileList_nW), 1);
FCR_mW = cell(length(fileList_mW), 1);
FCR_hW = cell(length(fileList_hW), 1);

FDS_nW = cell(length(fileList_nW), 1);
FDS_mW = cell(length(fileList_mW), 1);
FDS_hW = cell(length(fileList_hW), 1);

for i=1:length(fileList_nW)
        FCR_nW{i} = fFCR_nW{i}(1:no_samp);
        FDS_nW{i} = fFDS_nW{i}(1:no_samp);
end

for i=1:length(fileList_mW)
        FCR_mW{i} = fFCR_mW{i}(1:no_samp);
        FDS_mW{i} = fFDS_mW{i}(1:no_samp);
end

for i=1:length(fileList_hW)
        FCR_hW{i} = fFCR_hW{i}(1:no_samp);
        FDS_hW{i} = fFDS_hW{i}(1:no_samp);
end

%% Butterworth filter

fnyq = FS/2;  % Nyquist frequency
fcutlow = 450;
fcuthigh = 20;
fnotch = 50;
Q = 20;

% To store filtered data
no_FCRnW = cell(length(fileList_nW), 1);
no_FCRmW = cell(length(fileList_mW), 1);
no_FCRhW = cell(length(fileList_hW), 1);

no_FDSnW = cell(length(fileList_nW), 1);
no_FDSmW = cell(length(fileList_mW), 1);
no_FDShW = cell(length(fileList_hW), 1);

flt_FCRnW = cell(length(fileList_nW), 1);
flt_FCRmW = cell(length(fileList_mW), 1);
flt_FCRhW = cell(length(fileList_hW), 1);

flt_FDSnW = cell(length(fileList_nW), 1);
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
rct_FCRmW = cell(length(fileList_mW), 1);
rct_FCRhW = cell(length(fileList_hW), 1);

rct_FDSnW = cell(length(fileList_nW), 1);
rct_FDSmW = cell(length(fileList_mW), 1);
rct_FDShW = cell(length(fileList_hW), 1);


for i = 1: length(fileList_nW)
    rct_FCRnW{i} = abs(flt_FCRnW{i});
    rct_FDSnW{i} = abs(flt_FDSnW{i});
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
seg_FCRmW = cell(length(fileList_mW), 1);
seg_FCRhW = cell(length(fileList_hW), 1);

seg_FDSnW = cell(length(fileList_nW), 1);
seg_FDSmW = cell(length(fileList_mW), 1);
seg_FDShW = cell(length(fileList_hW), 1);

seg_rct_FCRnW = cell(length(fileList_nW), 1);
seg_rct_FCRmW = cell(length(fileList_mW), 1);
seg_rct_FCRhW = cell(length(fileList_hW), 1);

seg_rct_FDSnW = cell(length(fileList_nW), 1);
seg_rct_FDSmW = cell(length(fileList_mW), 1);
seg_rct_FDShW = cell(length(fileList_hW), 1);

label_nW = cell(length(fileList_nW), 1);
label_mW = cell(length(fileList_mW), 1);
label_hW = cell(length(fileList_hW), 1);

seglabel_nW = cell(length(fileList_nW), 1);
seglabel_mW = cell(length(fileList_mW), 1);
seglabel_hW = cell(length(fileList_hW), 1);

seg_winlen = 250; % Length of the moving window in milliseconds
overlap = 90; % Overlap percentage

% segmentation
for i = 1: length(fileList_nW)
    seg_rct_FCRnW{i} = segment_signal(rct_FCRnW{i},seg_winlen, overlap, FS);
    seg_rct_FDSnW{i} = segment_signal(rct_FDSnW{i},seg_winlen, overlap, FS);

    seg_FCRnW{i} = segment_signal(flt_FCRnW{i},seg_winlen, overlap, FS);
    seg_FDSnW{i} = segment_signal(flt_FDSnW{i},seg_winlen, overlap, FS);

end

for i = 1: length(fileList_mW)
    seg_rct_FCRmW{i} = segment_signal(rct_FCRmW{i},seg_winlen, overlap, FS);
    seg_rct_FDSmW{i} = segment_signal(rct_FDSmW{i},seg_winlen, overlap, FS);

    seg_FCRmW{i} = segment_signal(flt_FCRmW{i},seg_winlen, overlap, FS);
    seg_FDSmW{i} = segment_signal(flt_FDSmW{i},seg_winlen, overlap, FS);
end

for i = 1: length(fileList_hW)
    seg_rct_FCRhW{i} = segment_signal(rct_FCRhW{i},seg_winlen, overlap, FS);
    seg_rct_FDShW{i} = segment_signal(rct_FDShW{i},seg_winlen, overlap, FS);

    seg_FCRhW{i} = segment_signal(flt_FCRhW{i},seg_winlen, overlap, FS);
    seg_FDShW{i} = segment_signal(flt_FDShW{i},seg_winlen, overlap, FS);
end

% label generation
for i = 1 : length(fileList_nW)
    s_len = length(FCR_nW{i});
    label_nW{i} = generate_tasklables(s_len,task_len_smp);
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
    seglabel_nW{i} = label_segment(rct_FCRnW{i}, seg_winlen, overlap, label_nW{i}, FS);
end

for i = 1 : length(fileList_mW)
    seglabel_mW{i} = label_segment(rct_FCRmW{i}, seg_winlen, overlap, label_mW{i}, FS);
end

for i = 1 : length(fileList_hW)
    seglabel_hW{i} = label_segment(rct_FCRhW{i}, seg_winlen, overlap, label_hW{i}, FS);
end

%% FEATURE EXTRACTION

% RMS
% Store RMS of Segments
rms_seg_FCRnW = cell(length(fileList_nW), 1);
rms_seg_FCRmW = cell(length(fileList_mW), 1);
rms_seg_FCRhW = cell(length(fileList_hW), 1);

rms_seg_FDSnW = cell(length(fileList_nW), 1);
rms_seg_FDSmW = cell(length(fileList_mW), 1);
rms_seg_FDShW = cell(length(fileList_hW), 1);

% Extract RMS
for i =1:length(fileList_nW)

    for j = 1:length(seg_rct_FCRnW{i})
        data0 = seg_rct_FCRnW{i}{1,j};
        data1 = seg_rct_FDSnW{i}{1,j};
        
        rms_seg_FCRnW{i}{j,1} = sqrt(mean(data0.^2));
        rms_seg_FDSnW{i}{j,1} = sqrt(mean(data1.^2));
        
        data0 = 0;
        data1 = 0;

    end

end

for i =1:length(fileList_mW)

    for j = 1:length(seg_FCRmW{i})
        data0 = seg_rct_FCRmW{i}{1,j};
        data1 = seg_rct_FDSmW{i}{1,j};
        
        rms_seg_FCRmW{i}{j,1} = sqrt(mean(data0.^2));
        rms_seg_FDSmW{i}{j,1} = sqrt(mean(data1.^2));
        
        data0 = 0;
        data1 = 0;

    end

end

for i = 1:length(fileList_hW)

    for j = 1:length(seg_FCRhW{i})
        data0 = seg_rct_FCRhW{i}{1,j};
        data1 = seg_rct_FDShW{i}{1,j};
        
        rms_seg_FCRhW{i}{j,1} = sqrt(mean(data0.^2));
        rms_seg_FDShW{i}{j,1} = sqrt(mean(data1.^2));
        
        data0 = 0;
        data1 = 0;

    end

end

% MAV

% Store MAV of Segments
mav_seg_FCRnW = cell(length(fileList_nW), 1);
mav_seg_FCRmW = cell(length(fileList_mW), 1);
mav_seg_FCRhW = cell(length(fileList_hW), 1);

mav_seg_FDSnW = cell(length(fileList_nW), 1);
mav_seg_FDSmW = cell(length(fileList_mW), 1);
mav_seg_FDShW = cell(length(fileList_hW), 1);

% Extract MAV
for i =1:length(fileList_nW)

    for j = 1:length(seg_FCRnW{i})
        data0 = seg_rct_FCRnW{i}{1,j};
        data1 = seg_rct_FDSnW{i}{1,j};
        
        mav_seg_FCRnW{i}{j,1} = mean(abs(data0));
        mav_seg_FDSnW{i}{j,1} = mean(abs(data1));
        
        data0 = 0;
        data1 = 0;

    end

end

for i =1:length(fileList_mW)

    for j = 1:length(seg_FCRmW{i})
        data0 = seg_rct_FCRmW{i}{1,j};
        data1 = seg_rct_FDSmW{i}{1,j};
        
        mav_seg_FCRmW{i}{j,1} = mean(abs(data0));
        mav_seg_FDSmW{i}{j,1} = mean(abs(data1));
        
        data0 = 0;
        data1 = 0;

    end

end

for i =1:length(fileList_hW)

    for j = 1:length(seg_FCRhW{i})
        data0 = seg_rct_FCRhW{i}{1,j};
        data1 = seg_rct_FDShW{i}{1,j};
        
        mav_seg_FCRhW{i}{j,1} = mean(abs(data0));
        mav_seg_FDShW{i}{j,1} = mean(abs(data1));
        
        data0 = 0;
        data1 = 0;

    end

end


% ZC-rate

% Store ZC of Segments
zc_seg_FCRnW = cell(length(fileList_nW), 1);
zc_seg_FCRmW = cell(length(fileList_mW), 1);
zc_seg_FCRhW = cell(length(fileList_hW), 1);

zc_seg_FDSnW = cell(length(fileList_nW), 1);
zc_seg_FDSmW = cell(length(fileList_mW), 1);
zc_seg_FDShW = cell(length(fileList_hW), 1);

% Extract ZC
for i =1:length(fileList_nW)

    for j = 1:length(seg_FCRnW{i})
        data0 = seg_FCRnW{i}{1,j};
        data1 = seg_FDSnW{i}{1,j};
        
        zc_seg_FCRnW{i}{j,1} = zerocrossrate(data0);
        zc_seg_FDSnW{i}{j,1} = zerocrossrate(data1);
        
        data0 = 0;
        data1 = 0;

    end

end

for i =1:length(fileList_mW)

    for j = 1:length(seg_FCRmW{i})
        data0 = seg_FCRmW{i}{1,j};
        data1 = seg_FDSmW{i}{1,j};
        
        zc_seg_FCRmW{i}{j,1} = zerocrossrate(data0);
        zc_seg_FDSmW{i}{j,1} = zerocrossrate(data1);
        
        data0 = 0;
        data1 = 0;

    end

end

for i =1:length(fileList_hW)

    for j = 1:length(seg_FCRhW{i})
        data0 = seg_FCRhW{i}{1,j};
        data1 = seg_FDShW{i}{1,j};
        
        zc_seg_FCRhW{i}{j,1} = zerocrossrate(data0);
        zc_seg_FDShW{i}{j,1} = zerocrossrate(data1);
        
        data0 = 0;
        data1 = 0;

    end

end


%% Load Force data
% Specify the folder where the files are stored
folderPath_nWF = uigetdir();
folderPath_mWF = uigetdir();
folderPath_hWF = uigetdir();

% Get a list of all .mat files in the folder
fileList_nWF = dir(fullfile(folderPath_nWF, '*.mat'));
fileList_mWF = dir(fullfile(folderPath_mWF, '*.mat'));
fileList_hWF = dir(fullfile(folderPath_hWF, '*.mat'));

% Initialize a cell array to hold the Force data
F_nW = cell(length(fileList_nWF),1);
F_mW = cell(length(fileList_mWF),1);
F_hW = cell(length(fileList_hWF),1);

% Loop through each file and load the data
for i = 1:length(fileList_nWF)
    % Get the full path of the file
    filePath = fullfile(folderPath_nWF, fileList_nWF(i).name);
    
    % Load the data from the file
    buffer = load(filePath);
    F_nW{i} = buffer.buff;
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_nWF(i).name]);
    buffer = 0;
end

for i = 1:length(fileList_mWF)
    % Get the full path of the file
    filePath = fullfile(folderPath_mWF, fileList_mWF(i).name);
    
    % Load the data from the file
    buffer = load(filePath);
    F_mW{i} = buffer.buff;
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_mWF(i).name]);
    buffer = 0;
end

for i = 1:length(fileList_hWF)
    % Get the full path of the file
    filePath = fullfile(folderPath_hWF, fileList_hWF(i).name);
    
    % Load the data from the file
    buffer = load(filePath);
    F_hW{i} = buffer.buff;
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_hWF(i).name]);
    buffer = 0;
end

%% Truncate or Pad Force signal

for i = 1 : length(fileList_nWF)
    if length(F_nW{i}) > length(FCR_nW{i})
        F_nW{i} = F_nW{i}(1:length(FCR_nW{i}));
    else
        F_nW{i} = [F_nW{i}, zeros(1, length(FCR_nW{i}) - length(F_nW{i}))];
    end
end

for i = 1 : length(fileList_mWF)
    if length(F_mW{i}) > length(FCR_mW{i})
        F_mW{i} = F_mW{i}(1:length(FCR_mW{i}));
    else
        F_mW{i} = [F_mW{i}, zeros(1, length(FCR_mW{i}) - length(F_mW{i}))];
    end
end

for i = 1 : length(fileList_hWF)
    if length(F_hW{i}) > length(FCR_hW{i})
        F_hW{i} = F_hW{i}(1:length(FCR_hW{i}));
    else
        F_hW{i} = [F_hW{i}, zeros(1, length(FCR_hW{i}) - length(F_hW{i}))];
    end
end

%% segment Force signal

% To store segmentes
segF_nW = cell(length(fileList_nW), 1);
segF_mW = cell(length(fileList_mW), 1);
segF_hW = cell(length(fileList_hW), 1);

for i = 1: length(fileList_nW)
    segF_nW{i} = segment_signal(F_nW{i},seg_winlen, overlap, FS);
end

for i = 1: length(fileList_nW)
    segF_mW{i} = segment_signal(F_mW{i},seg_winlen, overlap, FS);
end

for i = 1: length(fileList_nW)
    segF_hW{i} = segment_signal(F_hW{i},seg_winlen, overlap, FS);
end

%% MAV of force segments

mav_segF_nW = cell(length(fileList_nWF), 1);
mav_segF_mW = cell(length(fileList_mWF), 1);
mav_segF_hW = cell(length(fileList_hWF), 1);

% Extract MAV
for i =1:length(fileList_nWF)

    for j = 1:length(segF_nW{i})
        data0 = segF_nW{i}{1,j};
        mav_segF_nW{i}{j,1} = mean(abs(data0));        
        data0 = 0;
    end
end

for i =1:length(fileList_mWF)

    for j = 1:length(segF_mW{i})
        data0 = segF_mW{i}{1,j};
        mav_segF_mW{i}{j,1} = mean(abs(data0));        
        data0 = 0;
    end
end

for i =1:length(fileList_hWF)

    for j = 1:length(segF_hW{i})
        data0 = segF_hW{i}{1,j};
        mav_segF_hW{i}{j,1} = mean(abs(data0));        
        data0 = 0;
    end
end

%% export mat file
in = input('Save into .mat file (y/n)', 's');

if (in == 'Y' | 'y')
    RMS_1 = [];
    MAV_1 = [];
    ZC_1 = [];

    RMS_2 = [];
    MAV_2 = [];
    ZC_2 = [];

    Label = [];
    Force = [];
    Weight = [];
    filename = "features.mat";

    % Channel_1
    for i = 1:length(fileList_nW)
        RMS_1 = [RMS_1; rms_seg_FCRnW{i}(:)];
        MAV_1 = [MAV_1; mav_seg_FCRnW{i}(:)];
        ZC_1 = [ZC_1; zc_seg_FCRnW{i}(:)];
        Label = [Label;seglabel_nW{i}(:)];
        Force = [Force;mav_segF_nW{i}(:)];
    end
    
    for i = 1:length(fileList_mW)
        RMS_1 = [RMS_1; rms_seg_FCRmW{i}(:)];
        MAV_1 = [MAV_1; mav_seg_FCRmW{i}(:)];
        ZC_1 = [ZC_1; zc_seg_FCRmW{i}(:)];
        Label = [Label;seglabel_mW{i}(:)];
        Force = [Force;mav_segF_mW{i}(:)];
    end
    
    for i = 1:length(fileList_hW)
        RMS_1 = [RMS_1; rms_seg_FCRhW{i}(:)];
        MAV_1 = [MAV_1; mav_seg_FCRhW{i}(:)];
        ZC_1 = [ZC_1; zc_seg_FCRhW{i}(:)];
        Label = [Label;seglabel_hW{i}(:)];
        Force = [Force;mav_segF_hW{i}(:)];
    end
    
    % Channel_2
    for i = 1:length(fileList_nW)
        RMS_2 = [RMS_2; rms_seg_FDSnW{i}(:)];
        MAV_2 = [MAV_2; mav_seg_FDSnW{i}(:)];
        ZC_2 = [ZC_2; zc_seg_FDSnW{i}(:)];
    end
    
    for i = 1:length(fileList_mW)
        RMS_2 = [RMS_2; rms_seg_FDSmW{i}(:)];
        MAV_2 = [MAV_2; mav_seg_FDSmW{i}(:)];
        ZC_2 = [ZC_2; zc_seg_FDSmW{i}(:)];
    end
    
    for i = 1:length(fileList_hW)
        RMS_2 = [RMS_2; rms_seg_FDShW{i}(:)];
        MAV_2 = [MAV_2; mav_seg_FDShW{i}(:)];
        ZC_2 = [ZC_2; zc_seg_FDShW{i}(:)];
    end
    RMS_1 = cell2table(RMS_1);
    MAV_1 = cell2table(MAV_1);
    ZC_1 = cell2table(ZC_1);

    RMS_2 = cell2table(RMS_2);
    MAV_2 = cell2table(MAV_2);
    ZC_2 = cell2table(ZC_2);

    Force = cell2table(Force);
    Label = array2table(Label);
    save(filename,"RMS_1","MAV_1","ZC_1","RMS_2","MAV_2","ZC_2","Label","Force",'-mat');
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

