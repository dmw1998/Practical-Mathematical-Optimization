function [x, minf, iter] = GoldenSection(a, b, f, epsilon)
% This function using golden search method to find the minima minf of 
% function f with the initial guess a and b (a < b). x is the solution within 
% the prescribed accuracy epsilon and iter is the number of iterations used.

% k: the maximum the number of iterations

if epsilon >= 1
    % When epsilon is an integer larger than 1, it means the maximum number
    % of iterations.
    k = epsilon;
    epsilon = 10^(-8);
    
else
    % epsilon is the tolerance, give k a large number
    k = 1000000;
    
end

r = (sqrt(5) - 1)/2;    % the golden ratio

L0 = b-a;
x1 = a + r^2 * L0;
x2 = a + r*L0;

iter = 0;
while b-a >= epsilon
    iter = iter + 1;
    
    if f(x1) > f(x2)
        a = x1;
        x1 = x2;
        x2 = a + r*(b-a);
    else
        b = x2;
        x2 = x1;
        x1 = a + r^2*(b-a);
    end
    
    if iter == k
        break
    end
    
end

x = (b+a)/2;
minf = f(x);

end

