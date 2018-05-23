%% Plots
plot(-ground_Y,ground_X,'m');
hold on;
plot(estim_X,estim_Y,'b');
% hold on;
% plot(odom_X,odom_Y,'g');
mx = [1.6,5.6,9.6,13.6,1.6,-3.5,9.6,13.6,13.6,13.6,19.2,9.6,5.6,5.6,1.6,1.6];
my = [1,1,1,1,-1,-1,-1,-1,-8,-10,-8,-10,-8,-10,-8,-10];
sz_mark = 40;
sz = 40;
% plot detection with offset 3m - 0.4 m. First is the far parameter of the
% camera, second is the offset camera_link vs base_link
% dx = [6-2.6,9-2.6,13.5,13.5,13.5, 10.5+2.6,7.5+2.6,4.5+2.6,-1.5,-1.5];
% dy = [0,0,-1.5+2.6,-4.5+2.6,-7.5+2.6,-12,-12,-12,-9-2.6,-6-2.6];
scatter(mx,my,sz_mark,'filled','LineWidth',1.5)
% scatter(dx,dy,sz,'LineWidth',1.5)
% scatter(d2x,d2y,sz,'LineWidth',1.5)
legend('ground truth','Ekf','Markers position')

%% absolute robot´s rotations from -90,90,0,180

figure
plot(euler_ref*(180/pi));
hold on;
plot(euler_actual*(180/pi));
legend('ground','estimate');

%% plot translation deviation

distance = sqrt((X_estim-X_ref).^2+(Y_estim-Y_ref).^2);
size = size(distance);
size = size(1);
path = linspace(0,65,size); %the robot makes 65 meters

figure
plot(path,distance,'b','LineWidth',1);
% hold on
% for index=1:size-1
%     line([path(index) path(index)],[0 distance(index)]);
% end
xlabel('Distance traveled [m]');ylabel('Translation deviation [m]');

clearvars size
%% plot rotational deviation

rotation = (180/pi)*(abs(euler_actual-euler_ref));
size = size(rotation);
size = size(1);
path = linspace(0,65,size); %the robot makes 65 meters

figure
plot(path,rotation,'b','LineWidth',1);
% hold on
% for index=1:size-1
%     line([path(index) path(index)],[0 distance(index)]);
% end
axis([0 65 0 12])
xlabel('Distance traveled [m]');ylabel('Rotation deviation [deg]');

clearvars size
