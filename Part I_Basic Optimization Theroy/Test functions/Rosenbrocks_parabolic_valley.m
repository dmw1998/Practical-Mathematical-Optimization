function fx = Rosenbrocks_parabolic_valley(x)
% input x must be a 2 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [-1.2; 1.0]
%                   true value   x* = [1; 1]

fx = 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;

end