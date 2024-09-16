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
end

for i = 1:6
    len = length(FCR_W{i});
    ts_W{i} = 0:TS:(len-1)/FS;
end


in = input('plot raw signals: y or n \n','s'); % Input from user
if in == 'y' || in == 'Y'

    figure(1);
    for i = 1:6
    subplot(6,1,i),plot(ts_nW{i},FCR_nW{i}),title ("RAW FCR NO-WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
    end
    
    figure(2);
    for i = 1:6
    subplot(6,1,i),plot(ts_nW{i},FDS_nW{i}),title ("RAW FDS NO-WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
    end

figure(3);
for i = 1:6
    subplot(6,1,i),plot(ts_W{i},FCR_W{i}),title ("RAW FCR WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
end

figure(4);
for i = 1:6
    subplot(6,1,i),plot(ts_W{i},FDS_W{i}),title ("RAW FDS WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
end
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

in = input('plot filter signals: y or n \n','s');
if in == 'y' || in == 'Y'
    
    for i=5:8
    figure(i);

    if i == 5
        for k = 1:6
            subplot(6,1,k),plot(ts_nW{k},flt_FCRnW{k}),title(" Filtered FCR NO-WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end

    elseif i == 6
        for k = 1:6
            subplot(6,1,k),plot(ts_nW{k},flt_FDSnW{k}),title(" Filtered FDS NO-WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end

    elseif i == 7
        for k = 1:6
            subplot(6,1,k),plot(ts_W{k},flt_FCRW{k}),title(" Filtered FCR WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end

    else
        for k = 1:6
            subplot(6,1,k),plot(ts_W{k},flt_FDSW{k}),title(" Filtered FDS WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end
    end
    end
end

%% RMS
windowLength = 250;  % Window length in samples

rms_FCRnW = cell(6,1);
rms_FCRW = cell(6,1);
rms_FDSnW = cell(6,1);
rms_FDSW = cell(6,1);

for i = 1:4
    if i == 1
        for k = 1:6
            data = flt_FCRnW{k};
            rms_FCRnW{k} = sqrt(movmean(data.^2,windowLength));
            data = 0;
        end
    elseif i == 2
        for k = 1:6
            data = abs(flt_FCRW{k});
            rms_FCRW{k} = sqrt(movmean(data.^2,windowLength));
            data = 0;
        end
    elseif i == 3
        for k = 1:6
            data = flt_FDSnW{k};
            rms_FDSnW{k} = sqrt(movmean(data.^2,windowLength));
            data = 0;
        end
    else
        for k = 1:6
            data = flt_FDSW{k};
            rms_FDSW{k} = sqrt(movmean(data.^2,windowLength));
            data = 0;
        end
    end
end

in = input('plot RMS signals: y or n \n','s');
if in == 'y' || in == 'Y'
    
    for i = 9:12
        figure(i);
        
        if i == 9
        for k = 1:6
            subplot(6,1,k),plot(ts_nW{k},rms_FCRnW{k}),title(" RMS FCR NO-WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end

    elseif i == 10
        for k = 1:6
            subplot(6,1,k),plot(ts_nW{k},rms_FDSnW{k}),title(" RMS FDS NO-WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end

    elseif i == 11
        for k = 1:6
            subplot(6,1,k),plot(ts_W{k},rms_FCRW{k}),title(" RMS FCR WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end
        
    else
        for k = 1:6
            subplot(6,1,k),plot(ts_W{k},rms_FDSW{k}),title(" RMS FDS WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end
        end
    end
end

%% MAV

mav_FCRnW = cell(6,1);
mav_FCRW = cell(6,1);
mav_FDSnW = cell(6,1);
mav_FDSW = cell(6,1);

for i = 1:4
    
    if i == 1
        for k = 1:6
            buffer = abs(flt_FCRnW{k});
            mav_FCRnW{k} = movmean(abs(buffer), windowLength);
            buffer = 0;
        end

    elseif i == 2

        for k = 1:6
            buffer = abs(flt_FCRW{k});
            mav_FCRW{k} = movmean(abs(buffer), windowLength);
            buffer = 0;
        end

    elseif i == 3 
        for k = 1:6
            buffer = abs(flt_FDSnW{k});
            mav_FDSnW{k} = movmean(abs(buffer), windowLength);
            buffer = 0;
        end

    else
        for k = 1:6
            buffer = abs(flt_FDSW{k});
            mav_FDSW{k} = movmean(abs(buffer), windowLength);
            buffer = 0;
        end
    end
end

in = input('plot MAV signals: y or n \n','s');
if in == 'y' || in == 'Y'
    
    for i = 13:16
        figure(i);
        
        if i == 13
        for k = 1:6
            subplot(6,1,k),plot(ts_nW{k},mav_FCRnW{k}),title(" MAV FCR NO-WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end

    elseif i == 14
        for k = 1:6
            subplot(6,1,k),plot(ts_nW{k},mav_FDSnW{k}),title(" MAV FDS NO-WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end

    elseif i == 15
        for k = 1:6
            subplot(6,1,k),plot(ts_W{k},mav_FCRW{k}),title(" MAV FCR WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end
        
    else
        for k = 1:6
            subplot(6,1,k),plot(ts_W{k},mav_FDSW{k}),title(" MAV FDS WEIGHT"),xlabel("time (s)"),ylabel("volts (mV)");
        end
        end
    end
end

%% Zero-Crossing
zc_FCRnW = cell(6,1);
zc_FCRW = cell(6,1);
zc_FDSnW = cell(6,1);
zc_FDSW = cell(6,1);

for i = 1:4
    if i == 1

        for k = 1:6
            buffer = flt_FCRnW{k};
            zc_FCRnW{k} = zerocrossrate(buffer,"WindowLength",windowLength);
            buffer = 0;
        end

    elseif i == 2
        for k = 1:6
            buffer = flt_FCRW{k};
            zc_FCRW{k} = zerocrossrate(buffer,"WindowLength",windowLength); 
            buffer = 0;
        end
    
    elseif i == 3
        for k = 1:6
            buffer = flt_FDSnW{k};
            zc_FDSnW{k} = zerocrossrate(buffer,"WindowLength",windowLength); 
            buffer = 0;
        end
    else
        for k = 1:6
            buffer = flt_FDSW{k};
            zc_FDSW{k} = zerocrossrate(buffer,"WindowLength",windowLength); 
            buffer = 0;
        end
    end
end

in = input('plot ZC  signals: y or n \n','s');
if in == 'y' || in == 'Y'
    
    for i = 17:20
        figure(i);
        
        if i == 17
        for k = 1:6
            subplot(6,1,k),plot(zc_FCRnW{k}),title(" ZC FCR NO-WEIGHT"),xlabel("Window Index"),ylabel("volts (mV)");
        end

    elseif i == 18
        for k = 1:6
            subplot(6,1,k),plot(zc_FDSnW{k}),title(" ZC FDS NO-WEIGHT"),xlabel("Window Index"),ylabel("volts (mV)");
        end

    elseif i == 19
        for k = 1:6
            subplot(6,1,k),plot(zc_FCRW{k}),title(" ZC FCR WEIGHT"),xlabel("Window Index"),ylabel("volts (mV)");
        end
        
    else
        for k = 1:6
            subplot(6,1,k),plot(zc_FDSW{k}),title(" ZC FDS WEIGHT"),xlabel("Window Index"),ylabel("volts (mV)");
        end
        end
    end
end