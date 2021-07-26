%% (i)
f = @P261i;
a = 0;
b = 2;
epsilon = 0.01;

[x, minf, iter] = GoldenSection(a, b, f, epsilon);

%% (ii)
f = @P261ii;
a = 0;
b = pi/2;
epsilon = 0.001;

[x, minf, iter] = GoldenSection(a, b, f, epsilon);

%% (iii)
f = @P261iii;
a = -1.9;
b = 0.9;
k = 10;

[x, minf, iter] = GoldenSection(a, b, f, k);

%% (iv)
f = @P261iv;
a = 0;
b = 20;
epsilon = 10^(-5);

[x, minf, iter] = GoldenSection(a, b, f, epsilon);