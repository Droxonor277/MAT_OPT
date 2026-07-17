function [x, y, r] = grad_iter(X, x0, y0, r0, a)
% [x y r] = grad_iter(X, x0, y0, r0, a)
%
        % makes the gradient method iteration. 
%
% INPUT: 
% X: n-by-2 matrix
%    with data
% x0, y0 are the coordinates of the circle center.
% r0 is the circle radius
% a is the stepsize
%
% OUTPUT: 
% coordinates and radius after one step of gradient method.

    N = size(X, 1);  % Number of points
    grad_x = [];  % Gradient initialization
    grad_y = [];  % Gradient initialization
    grad_r = [];  % Gradient initialization

    % Compute the gradient
    for i = 1:N
        xi = X(i, 1);
        yi = X(i, 2);

        % Distance from current center to point
        g(i) = sqrt((xi - x0)^2 + (yi - y0)^2) - r0;

        % Update gradients
        %grad_x = grad_x + ((x0 - xi) * (dist - r0)) / dist;
        %grad_y = grad_y + ((y0 - yi) * (dist - r0)) / dist;
        %grad_r = grad_r - (dist - r0);
        grad_x(i) = (x0 - xi)/(g(i) + r0);
        grad_y(i) = (y0 - yi)/(g(i) + r0);
        grad_r(i) = -1;
    end

    size(grad_x);
    size(grad_y);
    size(grad_r);
    k = [grad_x.', grad_y.',grad_r.'];
    size(k);
    f = 2*(g)*k;
    size(f);
    % Update the parameters using gradient descent
    x = x0 - a .* f(1)
    y = y0 - a .* f(2)
    r = r0 - a .* f(3)
end
