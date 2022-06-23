%% Assessment 1-1
clc;
clear;
theta = -4:0.2:4;
omega = -4:0.2:4;
[Theta, Omega] = meshgrid(theta, omega); % [X,Y] = meshgrid(x,y);
f_1 = Omega; % motion eqution
f_2 = -10/1*sin(Theta) - Omega; % motion eqution
figure(1);
quiver(Theta, Omega, f_1, f_2, 'color','b'); % quiver(X,Y,U,V)
xlabel('θ');
ylabel('ω');
title('Vector field f');
xlim([-4,4]);
ylim([-4,4]);
hold on;
%% Assessment 1-2
gradient_V_theta = 10*sin(Theta);
gradient_V_omega = Omega;
quiver(Theta, Omega, gradient_V_theta, gradient_V_omega, 'color', 'r');
hold off
%% Assessment 1-3
figure(2);
theta = -4:0.02:4;
omega = -4:0.02:4;
[Theta, Omega] = meshgrid(theta, omega); % [X,Y] = meshgrid(x,y);
V = 0.5*Omega.^2 + 10*(1-cos(Theta));
mesh(Theta, Omega, V); % mesh(X,Y,Z)
xlabel('θ');
ylabel('ω');
zlabel('V');
title('3D plot of V');
xlim([-4,4]);
ylim([-4,4]);