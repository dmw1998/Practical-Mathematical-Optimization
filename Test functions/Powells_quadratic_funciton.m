function fx = Powells_quadratic_funciton(x)
% input x must be a 4 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [3, -1, 0, 1]
%                   true value   x* = [0, 0, 0, 0]

fx = (x(1) + 10*x(2))^2 + 5*(x(3) - x(4))^2 + (x(2) - 2*x(3))^4 + 10*(x(1) - x(4))^4;

end