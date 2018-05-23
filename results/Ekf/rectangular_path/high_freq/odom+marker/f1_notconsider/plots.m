%% Plots
plot(-ground_Y,ground_X,'m');
hold on;
plot(estim_X,estim_Y,'b');
hold on;
plot(odom_X,odom_Y,'g');
mx = [1.6,5.6,9.6,13.6,1.6,5.6,9.6,13.6,13.6,13.6,9.6,9.6,5.6,5.6,1.6,1.6];
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
legend('ground truth','Ekf', 'Odometry', 'Markers position')