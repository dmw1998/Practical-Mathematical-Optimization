function [fx, dfx, H] = Freudenstein_and_Roth_function(x)
% input x must be a 2 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [0.5; -2]
%                   true value   x* = [5; 4] (globle)
%                                     x*' = [11.41...; -0.8968...] (local)

% fx: the value of function
% df: the gradient of f at x
% Hx: Hessian matrix of f at x

fx = (-13 + x(1) + ((5 - x(2))*x(2) - 2)*x(2))^2 + (-29 + x(1) + ((x(2) + 1)*x(2) - 14)*x(2))^2;

dfx = [
 
                                                                         4*x(1) - 2*x(2)*(x(2)*(x(2) - 5) + 2) + 2*x(2)*(x(2)*(x(2) + 1) - 14) - 84;
 2*(x(2)*(2*x(2) + 1) + x(2)*(x(2) + 1) - 14)*(x(1) + x(2)*(x(2)*(x(2) + 1) - 14) - 29) + 2*(x(2)*(x(2)*(x(2) - 5) + 2) - x(1) + 13)*(x(2)*(2*x(2) - 5) + x(2)*(x(2) - 5) + 2)];

Hx = [
 
                                                              4,                                                                                                 2*x(2)*(2*x(2) + 1) - 2*x(2)*(2*x(2) - 5) + 2*x(2)*(x(2) + 1) - 2*x(2)*(x(2) - 5) - 32;
 2*x(2)*(2*x(2) + 1) - 2*x(2)*(2*x(2) - 5) + 2*x(2)*(x(2) + 1) - 2*x(2)*(x(2) - 5) - 32, 2*(6*x(2) + 2)*(x(1) + x(2)*(x(2)*(x(2) + 1) - 14) - 29) + 2*(x(2)*(2*x(2) - 5) + x(2)*(x(2) - 5) + 2)^2 + 2*(x(2)*(2*x(2) + 1) + x(2)*(x(2) + 1) - 14)^2 + 2*(6*x(2) - 10)*(x(2)*(x(2)*(x(2) - 5) + 2) - x(1) + 13)];
 

end
