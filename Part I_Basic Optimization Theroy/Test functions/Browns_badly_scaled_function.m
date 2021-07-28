function [fx, dfx, H] = Browns_badly_scaled_function(x)
% input x must be a 2 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [1; 1]
%                   true value   x* = [10^6; 2 x 10^6]

% fx: the value of function
% df: the gradient of f at x
% Hx: Hessian matrix of f at x

fx = (x(1) - 10^6)^2 + (x(2) - 2 * 10^(-6))^2 + (x(1)*x(2) - 2)^2;

dfx = [
 
                                 2*x(1) + 2*x(2)*(x(1)*x(2) - 2) - 2000000;
 2*x(2) + 2*x(1)*(x(1)*x(2) - 2) - 4722366482869645/1180591620717411303424];

Hx = [
 
 2*x(2)^2 + 2, 4*x(1)*x(2) - 4;
 4*x(1)*x(2) - 4, 2*x(1)^2 + 2];
 
end
