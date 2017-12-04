%% Global planner

% Simple script global planner generating a N x 3 file, with 3 being
% x,y,tetha robot position

x_pos = [0:0.01:1]'; % forward position, move the robot one meter forward
size_x = size(x_pos);

y_pos = zeros(101,1); % lateral position, keep the robot stationary
size_y = size(y_pos);

theta = zeros(101,1); % heading

fid=fopen('Global planner.txt','w');
% fprintf(fid, [ header1 ' ' header2 '\n']);
fprintf(fid, '%f %f %f \n', [x_pos y_pos theta]');
fclose(fid);