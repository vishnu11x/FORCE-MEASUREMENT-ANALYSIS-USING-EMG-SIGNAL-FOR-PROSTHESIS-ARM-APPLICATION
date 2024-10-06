clear
close
clc

fs_old = 500;
fs_new = 1000;
Vref = 3.3;
Res = (2^12) - 1;
%% Load EMG data
% Specify the folder where the files are stored
folderPath_nWF = uigetdir();
folderPath_mWF = uigetdir();
folderPath_hWF = uigetdir();

% Get a list of all .mat files in the folder
fileList_nWF = dir(fullfile(folderPath_nWF, '*.txt'));
fileList_mWF = dir(fullfile(folderPath_mWF, '*.txt'));
fileList_hWF = dir(fullfile(folderPath_hWF, '*.txt'));

% Initialize a cell array to hold the loaded EMG data
F_nW = cell(length(fileList_nWF), 1);
F_mW = cell(length(fileList_mWF), 1);
F_hW = cell(length(fileList_hWF), 1);

% Loop through each file and load the data
for i = 1:length(fileList_nWF)
    % Get the full path of the file
    filePath = fullfile(folderPath_nWF, fileList_nWF(i).name);
    
    % Load the data from the file
    buffer = load(filePath);

    F_nW{i} = buffer;
    
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_nWF(i).name]);
    buffer = 0;
end

for i = 1:length(fileList_mWF)
    % Get the full path of the file
    filePath = fullfile(folderPath_mWF, fileList_mWF(i).name);
    
    % Load the data from the file
    buffer = load(filePath);

    F_mW{i} = buffer;
    
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_nWF(i).name]);
    buffer = 0;
end

for i = 1:length(fileList_hWF)
    % Get the full path of the file
    filePath = fullfile(folderPath_hWF, fileList_hWF(i).name);
    
    % Load the data from the file
    buffer = load(filePath);

    F_hW{i} = buffer;
    
    % Display the name of the loaded file
    disp(['Loaded file: ' fileList_nWF(i).name]);
    buffer = 0;
end

%% Convert RAW values into volts

% Variable to store data in volts
F_nWV = cell(size(F_nW));
F_mWV = cell(size(F_mW));
F_hWV = cell(size(F_hW));

for i = 1 : length(fileList_nWF)
    F_nWV{i} = (F_nW{i} * Vref) / Res;
end

for i = 1 : length(fileList_mWF)
    F_mWV{i} = (F_mW{i} * Vref) / Res;
end

for i = 1 : length(fileList_hWF)
    F_hWV{i} = (F_hW{i} * Vref) / Res;
end


%% Cal Force in N
c = 12.57; % calibration coeffi

% Variable to store data in N
F_nWN = cell(size(F_nW));
F_mWN = cell(size(F_mW));
F_hWN = cell(size(F_hW));

for i = 1 : length(fileList_nWF)
    F_nWN{i} = (F_nWV{i} * c);
end

for i = 1 : length(fileList_mWF)
    F_mWN{i} = (F_mWV{i} * c);
end

for i = 1 : length(fileList_hWF)
    F_hWN{i} = (F_hWV{i} * c);
end

%% Filtering

h = fir1(31, (100/(500/2)));

% Variable to store data
flt_F_nWN = cell(size(F_nW));
flt_F_mWN = cell(size(F_mW));
flt_F_hWN = cell(size(F_hW));

for i = 1 : length(fileList_nWF)
    flt_F_nWN{i} = filtfilt(h,1,F_nWN{i});
    flt_F_nWN{i} = movmean(flt_F_nWN{i},25);

end

for i = 1 : length(fileList_mWF)
    flt_F_mWN{i} = filtfilt(h,1,F_mWN{i});
    flt_F_mWN{i} = movmean(flt_F_mWN{i},25);


end

for i = 1 : length(fileList_hWF)
    flt_F_hWN{i} = filtfilt(h,1,F_hWN{i});
    flt_F_hWN{i} = movmean(flt_F_hWN{i},25);

end


%% Resampling

% Variable to store data 
rF_nWN = cell(size(F_nW));
rF_mWN = cell(size(F_mW));
rF_hWN = cell(size(F_hW));

for i = 1 : length(fileList_nWF)
    rF_nWN{i} = resample(flt_F_nWN{i},fs_new,fs_old);
    rF_nWN{i}(rF_nWN{i} < 0) = 0;
end

for i = 1 : length(fileList_mWF)
    rF_mWN{i} = resample(flt_F_mWN{i},fs_new,fs_old);
    rF_mWN{i}(rF_mWN{i} < 0) = 0;
end

for i = 1 : length(fileList_hWF)
    rF_hWN{i} = resample(flt_F_hWN{i},fs_new,fs_old);
    rF_hWN{i}(rF_hWN{i} < 0) = 0;
end

%% Total force

% Variable to store data 
TF_nWN = cell(size(F_nW));
TF_mWN = cell(size(F_mW));
TF_hWN = cell(size(F_hW));

for i = 1 : length(fileList_nWF)
    TF_nWN{i}(1,:) = (rF_nWN{i}(:,1) + rF_nWN{i}(:,2) + rF_nWN{i}(:,3));
end

for i = 1 : length(fileList_mWF)
    TF_mWN{i}(1,:) = (rF_mWN{i}(:,1) + rF_mWN{i}(:,2) + rF_mWN{i}(:,3));

end

for i = 1 : length(fileList_hWF)
    TF_hWN{i}(1,:) = (rF_hWN{i}(:,1) + rF_hWN{i}(:,2) + rF_hWN{i}(:,3));

end

%% Save in to mat filr

i = input('Save into .mat file (y/n)', 's');

if (i == 'Y' | 'y')
    
    for i = 1:length(fileList_nWF)
        filename = sprintf('S%d_nWF.mat', i);
        buff = TF_nWN{i};
        save(filename,"buff",'-mat');
        buff = 0;
    end
    
    for i = 1:length(fileList_mWF)
        filename = sprintf('S%d_mWF.mat', i);
        buff = TF_mWN{i};
        save(filename,"buff",'-mat');
        buff = 0;
    end
    
    for i = 1:length(fileList_hWF)
        filename = sprintf('S%d_hWF.mat', i);
        buff = TF_hWN{i};
        save(filename,"buff",'-mat');
        buff = 0;
    end
end







