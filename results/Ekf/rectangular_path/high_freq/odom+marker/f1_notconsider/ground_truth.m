
%% Initialize variables.
ground_pose = 'C:\Users\Simone\Dropbox\Abschlussarbeit\PEM\4-Results\Ekf\rectangular_path\high_freq\f1\ground_truth_posit.csv';
ground_orient = 'C:\Users\Simone\Dropbox\Abschlussarbeit\PEM\4-Results\Ekf\rectangular_path\high_freq\f1\ground_truth_orient.csv';
delimiter = ',';
startRow = 2;

%% Format for each line of text:

formatSpec_pos = '%f%f%f%f%[^\n\r]'; %%[^\n\r]
formatSpec_orient = '%f%f%f%f%f%[^\n\r]'; %%[^\n\r]

%% Open the text file.
fileID_groundpose = fopen(ground_pose,'r');
fileID_groundorient = fopen(ground_orient,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray_groundpose = textscan(fileID_groundpose, formatSpec_pos, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_groundorient = textscan(fileID_groundorient, formatSpec_orient, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');

%% Close the text file.
fclose(fileID_groundpose);
fclose(fileID_groundorient);

%% Allocate imported array to column variable names for ground truth position
time_gr = dataArray_groundpose{:, 1};
ground_X = dataArray_groundpose{:, 2}-6;
ground_Y = dataArray_groundpose{:, 3}-5.6;
ground_Z = dataArray_groundpose{:, 4};


%% Allocate imported array to column variable names for ground truth rotation
ground_qX = dataArray_groundorient{:, 2};
ground_qY = dataArray_groundorient{:, 3};
ground_qZ = dataArray_groundorient{:, 4};
ground_qW = dataArray_groundorient{:, 5};


%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans;