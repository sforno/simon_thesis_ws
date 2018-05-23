%% Import data from text file.


%% Initialize variables.
od_pose = 'C:\Users\Simone\Dropbox\Abschlussarbeit\PEM\4-Results\Ekf\rectangular_path\high_freq\f4\oddd_posit.csv';
od_orient = 'C:\Users\Simone\Dropbox\Abschlussarbeit\PEM\4-Results\Ekf\rectangular_path\high_freq\f4\oddd_orient.csv';
delimiter = ',';
startRow = 2;

%% Format for each line of text:

formatSpec_pos = '%f%f%f%f%[^\n\r]'; %%[^\n\r]
formatSpec_orient = '%f%f%f%f%f%[^\n\r]'; %%[^\n\r]

%% Open the text file.
fileID_odpose = fopen(od_pose,'r');
fileID_odorient = fopen(od_orient,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray_odpose = textscan(fileID_odpose, formatSpec_pos, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_odorient = textscan(fileID_odorient, formatSpec_orient, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');

%% Close the text file.
fclose(fileID_odpose);
fclose(fileID_odorient);

%% Data
time_gr = dataArray_odpose{:, 1};
odom_X = dataArray_odpose{:, 2};
odom_Y = dataArray_odpose{:, 3};
odom_Z = dataArray_odpose{:, 4};

%% Allocate imported array to column variable names for ground truth rotation
odom_qX = dataArray_odorient{:, 2};
odom_qY = dataArray_odorient{:, 3};
odom_qZ = dataArray_odorient{:, 4};
odom_qW = dataArray_odorient{:, 5};

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans;