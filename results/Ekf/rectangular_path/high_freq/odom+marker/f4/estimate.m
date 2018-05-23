%% Import data from text file.


%% Initialize variables.
estimated_pose = 'C:\Users\Simone\Dropbox\Abschlussarbeit\PEM\4-Results\Ekf\rectangular_path\high_freq\odom+marker\f4\pose_estimate_posit.csv';
estimated_orient = 'C:\Users\Simone\Dropbox\Abschlussarbeit\PEM\4-Results\Ekf\rectangular_path\high_freq\odom+marker\f4\pose_estimate_orient.csv';
delimiter = ',';
startRow = 2;

%% Format for each line of text:
%   column1: double (%f)
%	column2: double (%f)
%   column3: double (%f)
%	column4: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec_pos = '%f%f%f%f%[^\n\r]';
formatSpec_or = '%f%f%f%f%f%[^\n\r]';

%% Open the text file.
fileID_estimpose = fopen(estimated_pose,'r');
fileID_estimorient = fopen(estimated_orient,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray_estimpose = textscan(fileID_estimpose, formatSpec_pos, 'Delimiter', delimiter, 'TextType', 'string', 'EmptyValue', NaN, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray_estimorient = textscan(fileID_estimorient, formatSpec_or, 'Delimiter', delimiter, 'TextType', 'string', 'EmptyValue', NaN, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');

%% Close the text file.
fclose(fileID_estimpose);
fclose(fileID_estimorient);

%% Create output variable
time_odom = dataArray_estimpose{:, 1};
estim_X = dataArray_estimpose{:, 2};
estim_X = estim_X(27:(3252+27)); %reduce it for data sampling, take value from 0.1 meters
estim_Y = dataArray_estimpose{:, 3};
estim_Y = estim_Y(27:(3252+27)); 
estim_Z = dataArray_estimpose{:, 4};

%% Out
estimate_qX = dataArray_estimorient{:, 2};
estimate_qY = dataArray_estimorient{:, 3};
estimate_qZ = dataArray_estimorient{:, 4};
%estimate_qZ = -estimate_qZ;
%estimate_qZ = estimate_qZ(154:end);
estimate_qW = dataArray_estimorient{:, 5};

%% Convert angles to Euler

orientation_actual = [estimate_qW,estimate_qX,estimate_qY,estimate_qZ];
euler_actual = quat2eul(orientation_actual); %output order Z,Y,X rotation axis, we need at the end just the Z [radiants]

euler_actual = euler_actual(:,1); %save only Z
euler_actual = -euler_actual;

euler_actual = euler_actual(718:end);
euler_actual = euler_actual(1:2557);

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans;