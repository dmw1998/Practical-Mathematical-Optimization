%% (i)
a = 0;
b = 2;  
xx = linspace(a,b,200);
y = P261i(xx);
df = @(x) 2*x - 2*exp(-x);
dy = df(xx);
figure
plot(xx,y,xx,dy)

%% (ii)
a = 0;
b = pi/2;
xx = linspace(a,b,200);
y = P261ii(xx);
df = @(x) cos(x) - x.*sin(x);
dy = df(xx);
figure
plot(xx,y,xx,dy)

%% (iii)
a = -1.9;
b = 0.9;
xx = linspace(a,b,200);
y = P261iii(xx);
df = @(x) 4./(x.^2 + x - 2) - ((2*x + 1).*(4*x - 28))./(x.^2 + x - 2).^2;
dy = df(xx);
figure
plot(xx,y,xx,dy)

%% (iv)
a = 0;
b = 20;
xx = linspace(a,b,200);
y = P261iv(xx);
df = @(x) 4*x.^3 - 60*x.^2 + 1/10;
dy = df(xx);
figure
plot(xx,y,xx,dy)