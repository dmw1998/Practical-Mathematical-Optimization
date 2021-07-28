function [fx, dfx, H] = Powells_quadratic_funciton(x)
% input x must be a 4 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [3, -1, 0, 1]
%                   true value   x* = [0, 0, 0, 0]

% fx: the value of function
% df: the gradient of f at x
% Hx: Hessian matrix of f at x

fx = (x(1) + 10*x(2))^2 + 5*(x(3) - x(4))^2 + (x(2) - 2*x(3))^4 + 10*(x(1) - x(4))^4;

dfx = [
 
   10*x(4) - 10*x(3) + 40*(x(4) - x(1))^3;
    2*x(1) + 20*x(2) - 40*(x(4) - x(1))^3;
 20*x(1) + 200*x(2) + 4*(x(2) - 2*x(3))^3;
  10*x(3) - 10*x(4) - 8*(x(2) - 2*x(3))^3];

Hx = [
 
 120*(x(4) - x(1))^2 + 10,    -120*(x(4) - x(1))^2,                    0,                 -10;
     -120*(x(4) - x(1))^2, 120*(x(4) - x(1))^2 + 2,                   20,                   0;
                  0,                20, 12*(x(2) - 2*x(3))^2 + 200,     -24*(x(2) - 2*x(3))^2;
                -10,                 0,      -24*(x(2) - 2*x(3))^2, 48*(x(2) - 2*x(3))^2 + 10];

end