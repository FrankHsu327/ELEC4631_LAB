% Pre-lab
% Ex.1
a = [0 0 0 0 0];
b = [0 0 0 0 0];
c = linspace(5, 1, 5);
A = cat(1, A, B, C);


d = [1 2 3 4 5];
B = [d; -d; d; -d; d];
%%
% Ex.2
n = 4;
G = sparse(n,n);
G = diag([2 2 2 2]) + diag([-1 -1 -1], 1) + diag([-1 -1 -1], -1);
%%
% Ex.3
% disp(['inv of B: ', num2str(inv(B))]);
disp(['trace of B: ', num2str(trace(B))]);
disp(['det of B: ', num2str(det(B))]);
%%  Linear Algebra
% Ex.1
A = magic(5);
b = ones(5,1);
x = A\b;
% Assessment Ex.1
eigenvalue = eig(A);