
% Parameters
fs = 1000;           % Sampling frequency in Hz
windowLength_ms = 250; % Length of the moving window in milliseconds
overlapPercentage = 90; % Overlap percentage

% Convert window length from milliseconds to samples
windowLength_samples = round(windowLength_ms * fs / 1000);

% Calculate the increment (step size) based on the overlap
increment = round(windowLength_samples * (1 - overlapPercentage / 100));

% Example data (replace with your actual data)
data = load("noweight\barani_noweight.mat"); % Example data: 10 seconds of random data
signal = FCR_nW{1};

% Calculate the number of windows
numWindows = floor((length(signal) - windowLength_samples) / increment) + 1;

% Initialize cell array to store segmented windows
segmentedData = cell(1, numWindows);

% Segment the data using a sliding window
for i = 1:numWindows
    startIndex = (i - 1) * increment + 1;
    endIndex = startIndex + windowLength_samples - 1;
    segmentedData{i} = signal(startIndex:endIndex);
end

% Display the results (for verification)
disp(['Number of windows: ', num2str(numWindows)]);
disp('First window sample data:');
disp(segmentedData{1});
