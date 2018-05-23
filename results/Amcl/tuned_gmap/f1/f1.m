%% Import data from text file.
% Script for importing data from the following text file

%% Initialize variables.
filename_pose = 'C:\Users\Simone\Dropbox\Abschlussarbeit\PEM\4-Results\graph_localization\tuned_gmap\f1\pose.csv';
filename_odom = 'C:\Users\Simone\Dropbox\Abschlussarbeit\PEM\4-Results\graph_localization\tuned_gmap\f1\odom.csv';
delimiter = ';';
startRow = 2;

%% Format string for each line of text:

formatSpec = '%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]'; %%[^\n\r]

%% Open the text file.
fileID_pose = fopen(filename_pose,'r');
fileID_odom = fopen(filename_odom,'r');

%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray_pose = textscan(fileID_pose, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
dataArray_odom = textscan(fileID_odom, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);

%% Close the text file.
fclose(fileID_pose);
fclose(fileID_odom);

%% Allocate imported array to column variable names for the file odom_amcl_graphmap
time_odom = dataArray_odom{:, 1};
fieldheaderseq_odom = dataArray_odom{:, 2};
fieldheaderstamp_odom = dataArray_odom{:, 3};
fieldheaderframe_id_odom = dataArray_odom{:, 4};
positionx_odom = dataArray_odom{:, 5};
positiony_odom = dataArray_odom{:, 6};
positionz_odom = dataArray_odom{:, 7};
orientationx_odom = dataArray_odom{:, 8};
orientationy_odom = dataArray_odom{:, 9};
orientationz_odom = dataArray_odom{:, 10};
orientationw_odom = dataArray_odom{:, 11};


%% Allocate imported array to column variable names for the file pose_amcl_graphmap
time_pose = dataArray_pose{:, 1};
fieldheaderseq_pose = dataArray_pose{:, 2};
fieldheaderstamp_pose = dataArray_pose{:, 3};
fieldheaderframe_id_pose = dataArray_pose{:, 4};
positionx_pose = dataArray_pose{:, 5};
positiony_pose = dataArray_pose{:, 6};
positionz_pose = dataArray_pose{:, 7};
orientationx_pose = dataArray_pose{:, 8};
orientationy_pose = dataArray_pose{:, 9};
orientationz_pose = dataArray_pose{:, 10};
orientationw_pose = dataArray_pose{:, 11};


%% Prepare vectors for error functions
%% Transform rotations from quaternions to euler
% Reference rotations
% Inputs should be with dimension nx4 and of the form q = [w,x,y,z] according to Mathworks

orientation_ref = [orientationw_odom,orientationx_odom,orientationy_odom,orientationz_odom];
orientation_actual = [orientationw_pose,orientationx_pose,orientationy_pose,orientationz_pose];

euler_ref = quat2eul(orientation_ref); %output order Z,Y,X rotation axis, we need at the end just the Z [radiants]
euler_actual = quat2eul(orientation_actual); %output order Z,Y,X rotation axis, we need at the end just the Z [radiants]

euler_ref = euler_ref(:,1); %save only Z
euler_actual = euler_actual(:,1); %save only Z
%% A
points=22*4; %take points every 25 cm (1/4 meter)
Aindex_start = 334; %firts value with x = 15
Aindex_end = 2534; % end
Aspace = (Aindex_end - Aindex_start)/points;
Ax = zeros(1,points);
Ay = zeros(1,points);
Atheta = zeros(1,points);

 Ax(1,1) = positionx_odom(Aindex_start);
 Ay(1,1) = positiony_odom(Aindex_start);
 Atheta(1,1) = euler_ref(Aindex_start);
 
for index = 2:(points+1)
   Ax(1,index) = positionx_odom(Aindex_start+Aspace*(index-1));
   Ay(1,index) = positiony_odom(Aindex_start+Aspace*(index-1));
   Atheta(1,index) = euler_ref(Aindex_start+Aspace*(index-1));
end

pose_x_A = zeros(1,points+1);
pose_y_A = zeros(1,points+1);
rot_A = zeros(1,points+1);
index_v_A = zeros(1,points+1);

% create x vector 
for j = 1: (points+1)
    
for index = 1:150 % fieldposeposepositionx_pose 150 = roughly 37
    
if(positionx_pose(index,1)>= Ax(1,j) - 0.12 && positionx_pose(index,1)<= Ax(1,j) + 0.12)
    pose_x_A(1,j) = positionx_pose(index);
    index_v_A(1,j) = index;
end

end

end

% create y vector
 for j = 1:(points+1)
      temp = index_v_A(1,j);
      pose_y_A(1,j) = positiony_pose(temp,1);
 end
 
% create actual vector rotation from vector index_v_A
for j= 1:(points+1)
    temp = index_v_A(1,j);
    rot_A(1,j) = euler_actual(temp,1);
end
%% B
points=13*4
Bindex_start = 2950;
Bindex_end = 4300;
Bspace = round((Bindex_end - Bindex_start)/points);
Bx = zeros(1,points);
By = zeros(1,points);
Btheta = zeros(1,points);

Bx(1,1) = positionx_odom(Bindex_start);
By(1,1) = positiony_odom(Bindex_start);
Btheta = euler_ref(Bindex_start);
for index = 2:(points+1)
   Bx(1,index) = positionx_odom(Bindex_start+Bspace*(index-1));
   By(1,index) = positiony_odom(Bindex_start+Bspace*(index-1));
   Btheta(1,index) = euler_ref(Bindex_start+Bspace*(index-1));
end 
 

pose_y_B = zeros(1,points+1);
index_v_B = zeros(1,points+1);
pose_x_B = zeros(1,points+1);
rot_B = zeros(1,points+1);


%first create the y vertical vector
for j = 1: points+1
    
for index = 155:220 %look at fieldposeposepositiony_pose index 0:13 meters
    
if(positiony_pose(index,1)>= By(1,j) - 0.12 && positiony_pose(index,1)<= By(1,j) + 0.12)
    pose_y_B(1,j) = positiony_pose(index);
    index_v_B(1,j) = index;
end

end

end

%create x vector from y

for j = 1:points+1
      temp = index_v_B(1,j);
      pose_x_B(1,j) = positionx_pose(temp,1);
end

for j= 1:points+1
    temp = index_v_B(1,j);
    rot_B(1,j) = euler_actual(temp,1);
end
%% C
points=10*4;
Cindex_start = 4830;
Cindex_end = 5740;
Cspace = round((Cindex_end - Cindex_start)/points);
Cx = zeros(1,points);
Cy = zeros(1,points);
Ctheta = zeros(1,points);

Cx(1,1) = positionx_odom(Cindex_start);
Cy(1,1) = positiony_odom(Cindex_start);
Ctheta = euler_ref(Cindex_start);
for index = 2:points+1
   Cx(1,index) = positionx_odom(Cindex_start+Cspace*(index-1));
   Cy(1,index) = positiony_odom(Cindex_start+Cspace*(index-1));
   Ctheta(1,index) = euler_ref(Cindex_start+Cspace*(index-1));
end

pose_x_C = zeros(1,points+1);
index_v_C = zeros(1,points+1);
pose_y_C = zeros(1,points+1);
rot_C = zeros(1,points+1);

% create x vector 
for j = 1:points+1
    
for index = 220:274 % look at fieldposeposepositionx_pose(index) --> 37: 27 meters
    
if(positionx_pose(index,1)>= Cx(1,j) - 0.12 && positionx_pose(index,1)<= Cx(1,j) + 0.12)
    pose_x_C(1,j) = positionx_pose(index);
    index_v_C(1,j) = index;
end

end

end

%create y vector
 for j = 1:points+1
      temp = index_v_C(1,j);
      pose_y_C(1,j) = positiony_pose(temp,1);
 end

for j= 1:points+1
    temp = index_v_C(1,j);
    rot_C(1,j) = euler_actual(temp,1);
end
%% D
points=4*4;
Dindex_start = 6100;  %y=13
Dindex_end = 6680;    %y=8
Dspace = round((Dindex_end - Dindex_start)/points);
Dx = zeros(1,points); 
Dy = zeros(1,points);
Dtheta = zeros(1,points);

Dx(1,1) = positionx_odom(Dindex_start);
Dy(1,1) = positiony_odom(Dindex_start);
Dtheta = euler_ref(Dindex_start);
for index = 2:points+1
   Dx(1,index) = positionx_odom(Dindex_start+Dspace*(index-1));
   Dy(1,index) = positiony_odom(Dindex_start+Dspace*(index-1));
   Dtheta(1,index) = euler_ref(Dindex_start+Dspace*(index-1));
end

pose_y_D = zeros(1,points+1);
index_v_D = zeros(1,points+1);
pose_x_D = zeros(1,points+1);
rot_D = zeros(1,points+1);

%first create the y vertical vector
for j = 1:points+1
    
for index = 220:306 %look at fieldposeposepositiony_pose index --> 13:8 meters
    
if(positiony_pose(index,1)>= Dy(1,j) - 0.12 && positiony_pose(index,1)<= Dy(1,j) + 0.12)
    pose_y_D(1,j) = positiony_pose(index);
    index_v_D(1,j) = index;
end

end

end

% create x vector
for j = 1:points+1
      temp = index_v_D(1,j);
      pose_x_D(1,j) = positionx_pose(temp,1);
end
 
for j= 1:points+1
    temp = index_v_D(1,j);
    rot_D(1,j) = euler_actual(temp,1);
end
%% Make full vector
X = [Ax,Bx,Cx,Dx];
Y = [Ay,By,Cy,Dy];
TH = [Atheta, Btheta, Ctheta, Dtheta];
pose_x = [pose_x_A,pose_x_B,pose_x_C,pose_x_D];
pose_y = [pose_y_A,pose_y_B,pose_y_C,pose_y_D];
rot = [rot_A,rot_B,rot_C,rot_D];

%% Plots
%   figure;
%   plot(fieldposeposepositionx_pose,fieldposeposepositiony_pose,'r--o')
%   hold on
%   plot(fieldposeposepositionx_odom,fieldposeposepositiony_odom,'g--');
%   hold on
%    plot(X,Y,'b--o');
%    hold on
%    plot(pose_x,pose_y,'r--o');
%   hold on
%   plot(fieldposeposepositionx_pose,fieldposeposepositiony_pose, 'm--o');
%   axis ([15 30 0 -1])

%% Error functions 

% size = size(pose_x,2); %need just one of them variable size(pose_x)=size(pose_y)=size(X)=size(Y)
% delta_trans_actual = zeros(1,size-1);
% delta_trans_ref = zeros(1,size-1);
% delta_rot_actual = zeros(1,size-1);
% delta_rot_ref = zeros(1,size-1);
% 
% % calculate translation deltas of pose_x and pose_y (actual pose)
% for index=1:size-1
%     delta_trans_actual(1,index) = sqrt((pose_x(1,index+1)-pose_x(1,index))^2+(pose_y(1,index+1)-pose_y(1,index))^2);
% end
% 
% %calculate translation deltas of X and Y (reference pose)
% for index=1:size-1
%     delta_trans_ref(1,index) = sqrt((X(1,index+1)-X(1,index))^2+(Y(1,index+1)-Y(1,index))^2);
% end
% 
% %calculate rotation deltas of rot vector (actual rotation) [rad]
% for index=1:size-1
%     delta_rot_actual(1,index) = abs(rot(1,index+1)-rot(1,index));
% end
% 
% %calculate rotation deltas of rot vector (reference rotation) [rad]
% for index=1:size-1
%     delta_rot_ref(1,index) = abs(TH(1,index+1)-TH(1,index));
% end
% 
% %calculate the energy difference of the translational component, acc to 4)
% for index=1:size-1
%     delta_trans_result(1,index) = delta_trans_actual(1,index)-delta_trans_ref(1,index);
% end
% delta_trans_result = delta_trans_result.^2;
% %calculate the energy difference of the translational component, acc to 4)
% for index=1:size-1
%     delta_rot_result(1,index) = delta_rot_actual(1,index) - delta_rot_ref(1,index);
% end
% delta_rot_result = delta_rot_result.^2;

%% Error deviation plots - use this as errors and not the RMSE instead
%plot relative distance between points, to be put as nice graphs in thesis
%estimated (pose) - reference (odom)
%translation
size = size(pose_x,2);
for index=1:size-1
    distance_t(1,index) = sqrt((pose_x(1,index)-X(1,index))^2+(pose_y(1,index)-Y(1,index))^2); %estimated (pose) - reference (odom)
end
average_t = mean(distance_t);
min_t = min(distance_t);
max_t = max(distance_t);
%rotation [deg]
for index=1:size-1
    distance_r(1,index) = (abs(rot(1,index)-TH(1,index)))*(180/pi);
end
average_r = mean(distance_r);
min_r = min(distance_r);
max_r = max(distance_r);
%make full vector to plot
path = linspace(0,53,200);

figure
plot(path,distance_t,'b','LineWidth',1);
hold on
plot([path(1) path(end)],[average_t average_t], 'm--','LineWidth',2)
for index=1:size-1
    line([path(index) path(index)],[0 distance_t(index)]);
end
xlabel('Distance traveled [m]');ylabel('Translation deviation [m]');
legend('Deviation from reference path','Mean');
title('Alfa12=0.2, Alfa34=0.1');

figure
plot(path,distance_r,'b','LineWidth',1);
hold on
plot([path(1) path(end)],[average_r average_r], 'm--','LineWidth',2)
for index=1:size-1
    line([path(index) path(index)],[0 distance_r(index)]);
end
xlabel('Distance traveled [m]');ylabel('Rotation deviation [deg]');
legend('Deviation from reference path','Mean');
title('Alfa12=0.2, Alfa34=0.1');

figure
plot(path,rot*(180/pi),'b--o','LineWidth',1)
xlabel('Distance traveled [m]');ylabel('Rotation of the robot during path [deg]');
title('Robot rotations during path - 0,90,180,-90 in order (making 4 corners)');

%% Save variables
save('errors.mat','translation','rotation');
%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans;