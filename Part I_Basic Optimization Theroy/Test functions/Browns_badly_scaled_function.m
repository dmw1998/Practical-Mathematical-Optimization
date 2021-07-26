function fx = Browns_badly_scaled_function(x)
% input x must be a 2 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [1; 1]
%                   true value   x* = [10^6; 2 x 10^6]

fx = (x(1) - 10^6)^2 + (x(2) - 2 * 10^(-6))^2 + (x(1)*x(2) - 2)^2;

end
