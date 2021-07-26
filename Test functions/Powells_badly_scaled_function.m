function fx = Powells_badly_scaled_function(x)
% input x must be a 2 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [0; 1]
%                   true value   x* = [1.098... x 10^5; 9.106...]

fx = (10000*x(1)*x(2) - 1)^2 + (exp(-x(1) + exp(-x(2)) - 1.0001)^2;

end
