function fx = a_nonlinear_function_of_three_variables(x)
% input x must be a 3 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [0; 1; 2]
%                   true value   x* = [1; 1; 1]

fx = -1/(1 + (x(1) - x(2))^2) - sin(pi/2*x(2)*x(3)) - exp(-((x(1) + x(3))/x(2) - 2)^2);

end