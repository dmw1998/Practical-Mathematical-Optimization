function [x, minf, iter] = Newton(x0, f, df, H, epsilon)
% This function compute the minimum minf of function f with the tolerance
% epsilon and output the minimum point x, the minimum minf and iterations
% used.

% x0: initial point
% f: function
% df: the gradiant of function f
% H: the Hessian matrix of function f
% epsilon: tolerance

f0 = f(x0);
f1 = 10^6;
iter = 0;
while abs(f0 - f1) > epsilon
    iter = iter + 1;
    
    f0 = f1;
    
    x1 = x0 - H(x0)^(-1) * df(x0);
    
    f1 = f(x1);
    
end

x = x1;
minf = f1;

end