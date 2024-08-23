clear 
close 
clc

FS = 1000; %sampling rate
TS = 1/FS; % time period

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
end

% time for signals
for i = 1:6
    len = length(FCR_nW{i});
    ts_nW{i} = 0:TS:(len-1)/FS;
end

for i = 1:6
    len = length(FCR_W{i});
    ts_W{i} = 0:TS:(len-1)/FS;
end

figure(1);
for i = 1:6
    subplot(6,1,i),plot(ts_nW{i},FCR_nW{i}),title ("FCR RAW NO-WEIGHT");
end

figure(2);
for i = 1:6
    subplot(6,1,i),plot(ts_nW{i},FDS_nW{i}),title ("FDS RAW NO-WEIGHT");
end

figure(3);
for i = 1:6
    subplot(6,1,i),plot(ts_W{i},FCR_W{i}),title ("FCR RAW WEIGHT");
end

figure(4);
for i = 1:6
    subplot(6,1,i),plot(ts_W{i},FDS_W{i}),title ("FDS RAW WEIGHT");
end

%% Butterworth filter

fnyq = FS/2;  % Nyquist frequency
fcutlow = 450;
fcuthigh = 20;
fnotch = 50;



% To store filtered data
flt_FCRnW = cell(6,1);
flt_FCRW = cell(6,1);
flt_FDSnW = cell(6,1);
flt_FDSW = cell(6,1);


% 4th order butterworth bandpass filter
[a,b] = butter(4,[fcuthigh,fcutlow]/fnyq,"bandpass");

% 50Hz Notch filter
wo = fnotch/fnyq;  
bw = wo/35;
[x,y] = iirnotch(wo,bw);

for i=1:6

    % Apply bandpass filter
    flt_FCRnW{i} = filtfilt(a,b,FCR_nW{i});
    flt_FCRW{i} = filtfilt(a,b,FCR_W{i});
    flt_FDSnW{i} = filtfilt(a,b,FDS_nW{i});
    flt_FDSW{i} = filtfilt(a,b,FDS_W{i});
    
    % Apply notch filter
    flt_FCRnW{i} = filtfilt(x,y,FCR_nW{i});
    flt_FCRW{i} = filtfilt(x,y,FCR_W{i});
    flt_FDSnW{i} = filtfilt(x,y,FDS_nW{i});
    flt_FDSW{i} = filtfilt(x,y,FDS_W{i});

end

for i=5:8
    figure(i);

    if i == 5
        for k = 1:6
            subplot(6,1,k),plot(ts_nW{k},flt_FCRnW{k}),title(" Filtered FCR NO-WEIGHT");
        end
    end

    if i == 6
        for k = 1:6
            subplot(6,1,k),plot(ts_nW{k},flt_FDSnW{k}),title(" Filtered FDS NO-WEIGHT");
        end
    end

    if i == 7
        for k = 1:6
            subplot(6,1,k),plot(ts_W{k},flt_FCRW{k}),title(" Filtered FCR WEIGHT");
        end
    end

    

    if i == 8
        for k = 1:6
            subplot(6,1,k),plot(ts_W{k},flt_FDSW{k}),title(" Filtered FDSWEIGHT");
        end
    end
end





