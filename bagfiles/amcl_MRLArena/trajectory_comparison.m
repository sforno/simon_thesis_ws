%% Reading the entire bag files - contains all messages of all published topics

filePath = fullfile(fileparts(which('TrajectoryComparison')), '2017-10-16-14-44-54.bag');

bagselect = rosbag(filePath);

Start_sim_time = bagselect.StartTime;
Finish_sim_time = bagselect.EndTime;
Delta_sim_time = Finish_sim_time - Start_sim_time; % seconds

amcl_pose = select(bagselect, 'Time', [bagselect.StartTime bagselect.EndTime], 'Topic', '/amcl_pose');

odom_filtered = select(bagselect, 'Time', [bagselect.StartTime bagselect.EndTime], 'Topic', '/odometry/filtered');

%% Reading the subset file, contains only the /odometry/filtered and /amcl_pose topics with their relative messages

filePath = fullfile(fileparts(which('TrajectoryComparisonSmall')), 'subset.bag');

bagselect = rosbag(filePath);

amcl_pose = select(bagselect, 'Time', [bagselect.StartTime bagselect.EndTime], 'Topic', '/amcl_pose');

odom_filtered = select(bagselect, 'Time', [bagselect.StartTime bagselect.EndTime], 'Topic', '/odometry/filtered');

% This was not necessary, the bagfile was used in this way
% 1. 
% 2.
% 3.

%% Reading the generated .xls files

% Reading amcl_pose_point_five

x_amcl_pos = xlsread('amcl_pose_point_five.xlsx',1,'E2:E18');
y_amcl_pos = xlsread('amcl_pose_point_five.xlsx',1,'F2:F18');
z_amcl_pos = xlsread('amcl_pose_point_five.xlsx',1,'G2:G18');

x_amcl_or = xlsread('amcl_pose_point_five.xlsx',1,'H2:H18');
y_amcl_or = xlsread('amcl_pose_point_five.xlsx',1,'I2:I18');
z_amcl_or = xlsread('amcl_pose_point_five.xlsx',1,'J2:J18');

% Reading the odometry
x_odom_pos = xlsread('odom_point_five.xlsx',1,'F2:E820');
y_odom_pos = xlsread('odom_point_five.xlsx',1,'G2:G820');
z_odom_pos = xlsread('odom_point_five.xlsx',1,'H2:H820');

x_odom_or = xlsread('odom_point_five.xlsx',1,'I2:I820');
y_odom_or = xlsread('odom_point_five.xlsx',1,'J2:J820');
z_odom_or = xlsread('odom_point_five.xlsx',1,'K2:K820');

% Reference trajectory

x_ref_start = [0:.01:2]; 
[row,col] = size(x_ref_start);
x_ref = [0:0.01:4];
y_ref_start = zeros(1,col);
y_ref_end = [0:0.01:2-0.01];

y_ref_tot = horzcat(y_ref_start,y_ref_end);


% plot

figure 
plot(x_amcl_pos,y_amcl_pos,'r-*')
hold on;
plot(x_odom_pos,y_odom_pos,'g--')
hold on
plot(x_ref,y_ref_tot,'m')
title('xy-plane Husky trajectory - odom and amcl')
xlabel('Forward position [m]');ylabel('Lateral position [m]')
legend('Amcl estimated pose','Odometry', 'Reference Trajectory')







