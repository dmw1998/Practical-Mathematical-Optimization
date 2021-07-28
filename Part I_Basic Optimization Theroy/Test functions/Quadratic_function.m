function [fx, dfx, H] = Quadratic_function(x)
% input x must be a 2 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [0; 0]
%                   true value   x* = [1; 3]

% fx: the value of function
% df: the gradient of f at x
% Hx: Hessian matrix of f at x

fx = (x(1) + 2*x(2) - 7)^2 + (2*x(1) + x(2) - 5)^2;

dfx = [10*x(1) + 8*x(2) - 34; 8*x(1) + 10*x(2) - 38];

Hx = [10, 8; 8, 10];

end