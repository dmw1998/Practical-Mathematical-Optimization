% 1.7.1 Sketch the graphical solution to the following problem:
% min_x f(x) = (x1 - 2)^2 + (x2 - 2)^2
% such that x1 + 2x2 = 4; x1 >= 0; x2 >= 0.
% In articular indicate the feasible region:
% F = {(x1,x2)|x1 + 2x2 = 4; x1 >= 0; x2 >= 0}
% and the solution point x*.

%% variables: x1, x2; function: f(x) = (x1 - 2)^2 + (x2 - 2)^2

f = @(x1,x2) (x1 - 2).^2 + (x2 - 2).^2;   % Define object function
[x, y] = meshgrid(0:0.01:4, 0:0.01:3);
fx = f(x,y);
ax = gca;   % current axes
ax.XLim = [0,2];    % x1 >= 0
ax.YLim = [0,2];    % x2 >= 0

%% Figure 1: Solution is 0.8
surface(ax,x,y,fx,'FaceAlpha',0.5,'EdgeColor','none');
view(3)
[x1,z] = meshgrid(0:0.1:4,0:0.2:8);
x2 = (4 - x1)/2;    % x1 + 2x2 = 4
surface(ax,x1,x2,z,'FaceAlpha',0.5,'EdgeColor','none');
x1 = linspace(0,4,100);
x2 = (4 - x1)/2;
plot3(x1,x2,f(x1,x2),'k');
min(f(x1,x2))

%% Figure 2: Solution is 0.8
levels = 0:0.2:8;
contour(ax,x,y,fx,levels,'ShowText','on');
hold on
plot(x1,x2,'r');