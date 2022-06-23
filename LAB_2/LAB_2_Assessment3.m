clc;
t = Scope_theta(:,1);
figure(5);
p_1 = plot(t,Scope_theta(:,2));
hold on
p_2 = plot(t,Scope_omega(:,2));
legend([p_1, p_2],'Theta','Omega');
title('t v.s states');
hold off
figure(6);
plot(Scope_theta(:,2), Scope_omega(:,2));
title('Phase portrait');
xlabel('Theta');
ylabel('Omega');
%%
figure(7);
V = 0.5.*Scope_omega(:,2).^2 + 10*(1-cos(Scope_theta(:,2)));
plot3(Scope_theta(:,2), Scope_omega(:,2), V);
title('3D plot of V given in (1)');
grid on;
xlabel('Theta');
ylabel('Omega');
zlabel('V')
%%
figure(8);
V = 0.5.*Scope_omega(:,2).^2 + 0.5*(Scope_omega(:,2) + Scope_theta(:,2)).^2 + 10*2*(1-cos(Scope_theta(:,2)));
plot3(Scope_theta(:,2), Scope_omega(:,2), V);
title('3D plot of V given in (2)');
grid on;
xlabel('Theta');
ylabel('Omega');
zlabel('V');