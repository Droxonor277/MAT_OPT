function [x y r] = GN_iter(X, x0, y0, r0)
% [x y r] = GN_iter(X, x0, y0, r0)
%
% makes the Gauss-Newton iteration. 
%
% INPUT: 
% X: n-by-2 matrix
%    with data
% x0, y0 are the coordinates of the circle center.
% r0 is the circle radius
%
% OUTPUT: 
% coordinates and radius after one step of GN method.

    N = size(X, 1);  % Number of points
    J = zeros(N, 3); % Initialize the Jacobian matrix

    % Compute the residuals and the Jacobian
    for i = 1:N
        xi = X(i, 1);
        yi = X(i, 2);
        
        % Residual (distance to the circle)
        d = sqrt((xi - x0)^2 + (yi - y0)^2) - r0;
        
        % Derivative with respect to x0
        J(i, 1) = (x0 - xi) / sqrt((xi - x0)^2 + (yi - y0)^2);
        
        % Derivative with respect to y0
        J(i, 2) = (y0 - yi) / sqrt((xi - x0)^2 + (yi - y0)^2);
        
        % Derivative with respect to r
        J(i, 3) = -1;
    end

    % Compute the residuals
    residuals = sqrt((X(:, 1) - x0).^2 + (X(:, 2) - y0).^2) - r0;

    % Solve the normal equations
    delta = (J' * J) \ (J' * residuals);

    % Update the parameters
    x = x0 - delta(1);
    y = y0 - delta(2);
    r = r0 - delta(3);
end

 
