f = @(x) [10*x(1) + 8*x(2) - 34; 8*x(1) + 10*x(2) - 38];

x = [0; 0];
H = [10, 8; 8, 10];     % Hession matrix is a constant matrix
Hx = H(x)^(-1);    

for i = 1 : 5
    df = f(x);
    x = x - Hx*df;
end

% After the first iteration, df = [0; 0]; x = [1; 3] is the true value.