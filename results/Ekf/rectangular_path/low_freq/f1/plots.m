%% Plots
plot(-ground_Y,ground_X,'m');
hold on;
plot(estim_X,estim_Y,'b');
% hold on;
% plot(od_X,od_Y,'g');
% mx = [6,9,13.5,13.5,13.5,10.5,7.5,4.5,-1.5,-1.5];
% my = [1.5,1.5,-1.5,-4.5,-7.5,-12,-12,-12,-9,-6];
% plot detection with offset 3m - 0.4 m. First is the far parameter of the
% camera, second is the offset camera_link vs base_link
% dx = [6-2.6,9-2.6,13.5,13.5,13.5, 10.5+2.6,7.5+2.6,4.5+2.6,-1.5,-1.5];
% dy = [0,0,-1.5+2.6,-4.5+2.6,-7.5+2.6,-12,-12,-12,-9-2.6,-6-2.6];
% scatter(mx,my,sz_mark,'filled','LineWidth',1.5)
% scatter(dx,dy,sz,'LineWidth',1.5)
% scatter(d2x,d2y,sz,'LineWidth',1.5)
legend('ground truth','Ekf','Marker position','Detection')