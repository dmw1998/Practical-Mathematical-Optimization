function fx = Beales_function(x)
% input x must be a 2 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [1; 1]
%                   true value   x* = [3; 0.5]

fx = (1.5 - x(1)*(1 - x(2)))^2 + (2.25 - x(1)*(1 - x(2)^2))^2 + (2.625 - x(1)*(1 - x(2)^3))^2;

end