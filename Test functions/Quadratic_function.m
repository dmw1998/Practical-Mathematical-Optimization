function fx = Quadratic_function(x)
% input x must be a 2 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [0; 0]
%                   true value   x* = [1; 3]

fx = (x(1) + 2*x(2) - 7)^2 + (2*x(1) + x(2) - 5)^2;

end