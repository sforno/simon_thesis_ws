%% Error function

%use formulas to evaluate the traj p. 26, thesis: precise indoor
%localization for mobile laser scanners

% sqrt(1/n*sum(error)^2): root mean square values

% error = estimated - reference
%% E_trans
X_estim = estim_X;
X_ref = -ground_Y;
Y_estim = estim_Y;
Y_ref = ground_X;
size = size(X_estim);
size = size(1);

diff_tr = sqrt((X_estim-X_ref).^2+(Y_estim-Y_ref).^2);
error_tr= sqrt((1/size)*sum(diff_tr.^2));
max_error_tr = max(diff_tr);
min_error_tr = min(diff_tr);

clearvars size
%% E_rot

size = size(euler_ref);
size = size(1);
diff_rot = abs(euler_actual - euler_ref);
error_rot = sqrt((1/size)*sum(diff_rot.^2));
error_rot = error_rot*(180/pi);

max_error_rot = max(diff_rot)*(180/pi);
min_error_rot = min(diff_rot)*(180/pi);