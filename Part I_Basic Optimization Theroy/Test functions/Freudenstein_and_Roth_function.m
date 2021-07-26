function fx = Freudenstein_and_Roth_function(x)
% input x must be a 2 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [0.5; -2]
%                   true value   x* = [5; 4] (globle)
%                                     x*' = [11.41...; -0.8968...] (local)

fx = (-13 + x(1) + ((5 - x(2))*x(2) - 2)*x(2))^2 + (-29 + x(1) + ((x(2) + 1)*x(2) - 14)*x(2))^2;

end
