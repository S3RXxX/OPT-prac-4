clear all;
clc;


% N = 7500000
% b = 1.2


syms S I b N; % Define symbolic variables

% Define the multivariate function
f_1 = (S * I * b)/ N;

% Define the point of expansion
a = [1, 1];

% Define the order of the Taylor series expansion
order = 2;

% Compute the Taylor series expansion
taylor_expansion = taylor(f_1, [S, I], 'ExpansionPoint', a, 'Order', order);

f_2 = -(S * I * b)/ N;

taylor_expansion2 = taylor(f_2, [S, I], 'ExpansionPoint', a, 'Order', order);

% Display the result
disp(taylor_expansion);
disp(taylor_expansion2);