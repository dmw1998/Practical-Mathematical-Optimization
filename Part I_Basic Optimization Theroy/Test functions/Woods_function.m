function fx = Woods_function(x)
% input x must be a 4 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [-3; -1; -3; -1]
%                   true value   x* = [1; 1; 1; 1]

fx = 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2 + 90*(x(4) - x(3)^2)^2 + (1 - x(3))^2 + 10*(x(2) + x(4) - 2)^2 + 0.1*(x(2) - x(4))^2;

end