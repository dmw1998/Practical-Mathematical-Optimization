function [fx, dfx, H] = Rosenbrocks_parabolic_valley(x)
% input x must be a 2 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [-1.2; 1.0]
%                   true value   x* = [1; 1]

% fx: the value of function
% df: the gradient of f at x
% Hx: Hessian matrix of f at x

fx = 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;

dfx = [
 
 2*x(1) - 400*x(1)*(- x(1)^2 + x(2)) - 2;
           - 200*x(1)^2 + 200*x(2)];

Hx = [
 
1200*x(1)^2 - 400*x(2) + 2, -400*x(1);
                 -400*x(1),    200];

end