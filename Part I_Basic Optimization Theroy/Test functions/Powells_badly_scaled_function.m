function [fx, dfx, H] = Powells_badly_scaled_function(x)
% input x must be a 2 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [0; 1]
%                   true value   x* = [1.098... x 10^5; 9.106...]

% fx: the value of function
% df: the gradient of f at x
% Hx: Hessian matrix of f at x

fx = (10000*x(1)*x(2) - 1)^2 + (exp(-x(1)) + exp(-x(2)) - 1.0001)^2;

dfx = [
 
20000*x(2)*(10000*x(1)*x(2) - 1) - 2*exp(-x(1))*(exp(-x(1)) + exp(-x(2)) - 10001/10000);
20000*x(1)*(10000*x(1)*x(2) - 1) - 2*exp(-x(2))*(exp(-x(1)) + exp(-x(2)) - 10001/10000)];

Hx = [
 
2*exp(-2*x(1)) + 2*exp(-x(1))*(exp(-x(1)) + exp(-x(2)) - 10001/10000) + 200000000*x(2)^2,                                 400000000*x(1)*x(2) + 2*exp(-x(1))*exp(-x(2)) - 20000;
                                   400000000*x(1)*x(2) + 2*exp(-x(1))*exp(-x(2)) - 20000, 2*exp(-2*x(2)) + 2*exp(-x(2))*(exp(-x(1)) + exp(-x(2)) - 10001/10000) + 200000000*x(1)^2];

end
