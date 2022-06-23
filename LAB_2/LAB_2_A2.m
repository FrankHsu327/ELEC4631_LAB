%% Assessment 2-1
clc;
clear;
theta = -4:0.2:4;
omega = -4:0.2:4;
[Theta, Omega] = meshgrid(theta, omega); % [X,Y] = meshgrid(x,y);
f_1 = Omega; % motion eqution
f_2 = -10/1*sin(Theta) - Omega; % motion eqution
figure(3);
quiver(Theta, Omega, f_1, f_2, 'color','b'); % quiver(X,Y,U,V)\
xlabel('θ');
ylabel('ω');
title('Vector field f');
xlim([-4,4]);
ylim([-4,4]);
hold on;

% new Lyapunov function
gradient_V_theta = Omega + Theta + 10*2*sin(Theta);
gradient_V_omega = 2*Omega + Theta;
quiver(Theta, Omega, gradient_V_theta, gradient_V_omega, 'color', 'r');
hold off
% 
%% Assessment 2-2
figure(4);
theta = -4:0.02:4;
omega = -4:0.02:4;
[Theta, Omega] = meshgrid(theta, omega); % [X,Y] = meshgrid(x,y);
V = 0.5*Omega.^2 + 0.5*(Omega + Theta).^2 + 10*2*(1 - cos(Theta));
mesh(Theta, Omega, V); % mesh(X,Y,Z)
xlabel('θ');
ylabel('ω');
zlabel('V');
title('3D plot of V');
xlim([-4,4]);
ylim([-4,4]);
