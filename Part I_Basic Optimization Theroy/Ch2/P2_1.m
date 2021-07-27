%% (i)
f = @P261i;
a = 0;
b = 2;
epsilon = 0.01;

[x, minf, iter] = GoldenSection(a, b, f, epsilon);      % iter = 12
[x, minf, iter] = PowellQuadInterp(0, 0.1, 0.1, f, epsilon);        % iter = 4
% Result agree f_min = 1.46

%% (ii)
f = @P261ii;
a = 0;
b = pi/2;
epsilon = 0.001;

[x, minf, iter] = GoldenSection(a, b, f, epsilon);      % iter = 16, almost equal to zero.
[x, minf, iter] = PowellQuadInterp(0, 0.1, 0.1, f, epsilon);
% iter = 8, reached the local minimum outside the interval.

%% (iii)
f = @P261iii;
a = -1.9;
b = 0.9;
k = 10;

[x, minf, iter] = GoldenSection(a, b, f, 0, k);     % iter = 10
[x, minf, iter] = PowellQuadInterp(0, 0.1, 0.1, f, 0.001);     % iter = 2
% Results almost agree f_min = 13.2

%% (iv)
f = @P261iv;
a = 0;
b = 20;
epsilon = 10^(-5);

[x, minf, iter] = GoldenSection(a, b, f, epsilon)      % iter = 31
[x, minf, iter] = PowellQuadInterp(0, 0.1, 0.1, f, epsilon)     % iter = 148
% Results agree f_min = -1.68735e+04