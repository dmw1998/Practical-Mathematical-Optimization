function [fx, dfx, H] = Woods_function(x)
% input x must be a 4 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [-3; -1; -3; -1]
%                   true value   x* = [1; 1; 1; 1]

% fx: the value of function
% df: the gradient of f at x
% Hx: Hessian matrix of f at x

fx = 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2 + 90*(x(4) - x(3)^2)^2 + (1 - x(3))^2 + 10*(x(2) + x(4) - 2)^2 + 0.1*(x(2) - x(4))^2;

dfx = [
 
- 180*x(3)^2 + (1001*x(4))/5 + (99*x(2))/5 - 40;
        2*x(1) - 400*x(1)*(- x(1)^2 + x(2)) - 2;
- 200*x(1)^2 + (99*x(4))/5 + (1101*x(2))/5 - 40;
        2*x(3) - 360*x(3)*(- x(3)^2 + x(4)) - 2];

Hx = [
 
   1001/5,                    0,   99/5,               -360*x(3);
  0, 1200*x(1)^2 - 400*x(2) + 2, -400*x(1),                    0;
     99/5,               -400*x(1), 1101/5,                    0;
-360*x(3),                    0,      0, 1080*x(3)^2 - 360*x(4) + 2];

end