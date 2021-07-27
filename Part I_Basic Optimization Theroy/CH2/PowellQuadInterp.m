function [x, minf, iter] = PowellQuadInterp(lambda_0,h,H,f,epsilon)
% This function calculates the minima minf of a function f by Powell's
% quadratic interpolation method. x0 is a given starting point and h is the
% step size. H is the maximum step size and epsilon is the tolerance.

%% Step 1
% Give lambda set
lambda_set = [lambda_0, lambda_0 + h];     % initial set [lambda_0, lambda_1]

% Give the correponding function values.
iter = 0;
F0 = f(lambda_0);    % F(labmda_0)
F1 = f(lambda_0 + h);      % F(labmda_1)

%% Step 2
if F0 < F1
    F2 = F1;
    F1 = F0;
    lambda_set = [lambda_0 - h, lambda_set];        % Initial set [lambda_0, lambda_1, lambda_2]
    F0 = f(lambda_0);
else
    F2 = (lambda_0+2*h);     % F(labmda2)
    lambda_set = [lambda_set, lambda_0 + 2*h];      % Initial set [lambda_0, lambda_1, lambda_2]
end

%% Step 3
% Compute turning point lambda_m
F01 = F0/(-h) + F1/h;       % F[lambda_0, lambda_1]
F012 = F0/(-h*(-2)*h) + F1/(h*(-h)) + F2/(2*h*h);       % F[lambda_0, lambda_1, lambda_2]
lambda_m = (F012*(2*lambda_0+h) - F01)/(2*F012);

% Test for minimum or maximum
if F012 > 0
    is_min = true;
else
    is_min = false;
end

while true

    while true
        
        d_set = abs(lambda_set - lambda_m);
        [dmin, index1] = min(d_set);
        lambda_n = lambda_set(index1);

        %% Step 4
        if is_min && abs(lambda_m - lambda_n) > H        % lambda_m is a minimum and |lambda_m - lambda_n| > H
                                                        % F012 can never zero
            [dmax, index2] = max(d_set);
            lambda_set(index2) = [];        % Discard the furthest point from lambda_m

            % Take a step of size H from the point with the lowest value in direction of descent
            if f(lambda_set(1)) > f(lambda_set(2))
                lambda_set(3) = lambda_set(2) + H;
            else
                lambda_set = [lambda_set(1) - H, lambda_set];
            end 

        elseif ~is_min   % lambda_m is a maximum
            lambda_set(index1) = [];        % Discard the nearest point to lambda_m

            % Take a step of size H from the point with the lowest value in direction of descent
            if f(lambda_set(1)) > f(lambda_set(2))
                lambda_set(3) = lambda_set(2) + H;
            else
                lambda_set = [lambda_set(1) - H, lambda_set];
            end 

        else
            break
        end
        
        iter = iter + 1;

        %% Back to Step 3
        [lambda_m, is_min] = step3(lambda_set, f);

    end

    %% Step 5
    if abs(lambda_m - lambda_n) < epsilon
        Fm = f(lambda_m);
        Fn = f(lambda_n);
        [minf, index4] = min([Fm, Fn]);
        
        if index4 == 1
            x = lambda_m;
        else
            x = lambda_n;
        end
        
        return
    end

    %% Step 6
    % Discard point with highest F value
    F = f(lambda_set);
    [Fmax,index3] = max(F);

    % Replace the point by lambda_m
    lambda_set(index3) = lambda_m;

    % Back to step 3
    [lambda_m, is_min] = step3(lambda_set, f);

end

end

function [lambda_m, is_min] = step3(lambda_set, f)
    % Compute turning point lambda_m
    F0 = f(lambda_set(1));
    F1 = f(lambda_set(2));
    F2 = f(lambda_set(3));

    F01 = F0/(lambda_set(1) - lambda_set(2)) + F1/(lambda_set(2) - lambda_set(1));
    F012 = F0/((lambda_set(1) - lambda_set(2))*(lambda_set(1) - lambda_set(3)))...
         + F1/((lambda_set(2) - lambda_set(1))*(lambda_set(2) - lambda_set(3)))...
         + F2/((lambda_set(3) - lambda_set(1))*(lambda_set(3) - lambda_set(2)));

    lambda_m = (F012*(2*lambda_set(1)) - F01)/(2*F012);

    if F012 > 0
        is_min = true;      % is minimum
    else
        is_min = false;     % is maximum
    end

end