function fx = Fletcher_and_Powells_helical_valley(x)
% input x must be a 3 x 1 vector
% output fx is a double number
% For testing, initial point x0 = [-1; 0; 0]
%                   true value   x* = [1; 0; 0]

fx = 100*((x(3) - 10*theta(x(1),x(2)))^2 + (sqrt(x(1)^2 + x(2)^2) - 1)^2) + x(3)^2;

end

function s = theta(x1, x2)
% input x1, x2 are numbers
% output s is a double number
% x1 should not be zero.

if x1 > 0
    s = atan(x2/x1)/(2*pi);
elseif x1 < 0
    s = (pi + atan(x2/x1))/(2*pi);
else
    s = NaN;
end

end    