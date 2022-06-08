%% Task 1.1
clear;
clc;
fprintf('------------------------------\n');
fprintf('------------Task 1------------\n');
fprintf('------------------------------\n');
% Generate matrices
for i=1:5
    A{i} = randi([-10 10],10);
end

% det(A)
det_result = [det(A{1}) det(A{2}) det(A{3}) det(A{4}) det(A{5})];

% Product of elements
% for loop
eig_A1 = eig(A{1});
eig_A2 = eig(A{2});
eig_A3 = eig(A{3});
eig_A4 = eig(A{4});
eig_A5 = eig(A{5});
product_A = [1 1 1 1 1];
for i = 1:length(eig_A1)
    product_A(1) = product_A(1)*eig_A1(i);
    product_A(2) = product_A(2)*eig_A2(i);
    product_A(3) = product_A(3)*eig_A3(i);
    product_A(4) = product_A(4)*eig_A4(i);
    product_A(5) = product_A(5)*eig_A5(i);
end
% prod()
det_proof = [prod(eig(A{1}), 'all') prod(eig(A{2}), 'all') prod(eig(A{3}), 'all') prod(eig(A{4}), 'all') prod(eig(A{5}), 'all')];

disp(['The result of det(A):']);
disp(det_result);
disp(['Product of all elements:']);
disp(det_proof);
disp(['The difference between det_result and det_proof:']);
disp(abs(det_result-det_proof));
fprintf('\n');
% trace(A)
trace_result = [trace(A{1}) trace(A{2}) trace(A{3}) trace(A{4}) trace(A{5})];
% sum()
trace_proof = [sum(eig(A{1}), 'all') sum(eig(A{2}), 'all') sum(eig(A{3}), 'all') sum(eig(A{4}), 'all') sum(eig(A{5}), 'all')];
disp(['The result of det(A):']);
disp(trace_result);
disp(['Product of all elements:']);
disp(trace_proof);
disp(['The difference between det_result and det_proof:']);
disp(abs(trace_result-trace_proof));

%% Task 1.2
clear;
clc;

A = randi([-10 10],10);
[V, D] = eig(A);

% a. Eigenvalue
fprintf('------------------------------\n');
fprintf('----------Task 1.2.a----------\n');
fprintf('------------------------------\n');
fprintf('Eigenvalue: ')
for i=1:10
    fprintf('\n%s\n',num2str(D(i,i)));
end

% b. Eigenvector
fprintf('------------------------------\n');
fprintf('----------Task 1.2.b----------\n');
fprintf('------------------------------\n');
fprintf('\nEigenvector: \n');
disp(V);

% c. 
fprintf('------------------------------\n');
fprintf('----------Task 1.2.c----------\n');
fprintf('------------------------------\n');
result = [];
sum = zeros(10);
for i=1:10
    result = D(i,i).*A*V(:,i)*(V(:,i))';
    if i==1
        fprintf('The %dst product:\n',i);
        disp(result);
    elseif i==2
        fprintf('The %dnd product:\n',i);
        disp(result);
    elseif i==3
        fprintf('The %drd product:\n',i);
        disp(result);
    else
        fprintf('The %dth product:\n',i);
        disp(result);
    end
    sum = sum + result;
end
% d.
fprintf('------------------------------\n');
fprintf('----------Task 1.2.d----------\n');
fprintf('------------------------------\n');
fprintf('The sum is:\n');
disp(sum);
fprintf('The A is:\n');
disp(A);

%% Task 2
clear;
clc;
A = [7 -8 -7 -55; 9 -5 10 19; -8 1 10 81; 9 10 0 -46; 3 10 6 8];
% a.
fprintf('------------------------------\n');
fprintf('-----------Task 2.a-----------\n');
fprintf('------------------------------\n');
fprintf('The dimension of Im(A) is:\n');
disp(rank(A));
orth_A = orth(A);
fprintf('The orthogonal basis is:\n');
disp(orth_A);
fprintf('The product of (orth_A)''*orth_A is:\n');
disp((orth_A')*orth_A);
% b.
fprintf('------------------------------\n');
fprintf('-----------Task 2.b-----------\n');
fprintf('------------------------------\n');
fprintf('The dimension of null(transpose of A) is:\n');
disp(width(A') - rank(A'));

orth_nullA = orth(null(A'));

disp((orth_nullA')*orth_nullA);
% c.
fprintf('------------------------------\n');
fprintf('-----------Task 2.c-----------\n');
fprintf('------------------------------\n');
x = [1;2;-1;0];
new_AX = orth_A'*A*x;
fprintf('The new coordinate would be:\n');
disp(new_AX);
%%
% d.
clear;
clc;
fprintf('------------------------------\n');
fprintf('-----------Task 2.d-----------\n');
fprintf('------------------------------\n');
B = [7 -6 -38 1;-5 -5 -10 -10; 9 2 -10 11; -3 -1 2 -4];
orth_basis_B = orth(B);
null_basis_BT = orth(null(B'));
new_basis = [orth_basis_B null_basis_BT];
V = eye(4)\new_basis;
new_B = V*B*inv(V);
fprintf('The transformation with new basis:\n');
disp(new_B);