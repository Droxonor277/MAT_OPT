function [x y r success] = LM_iter(X, x0, y0, r0, mu)
% [x y r success] = LM_iter(X, x0, y0, r0, mu)
%
% makes the Levenberg-Marquardt iteration. 
%
% INPUT: 
% X: n-by-2 matrix
%    with data
% x0, y0 are the coordinates of the circle center.
% r0 is the circle radius
% mu is the damping factor (the factor which multiplies the
% regularizing identity matrix)

% OUTPUT: 
% success == 1 if the iteration is successful, i.e. 
% value of criterion f is decreased after the update 
% of x. 
% success == 0 in the oposite case. 
%
% x,y,r are updated parameters if success == 1. 
% x,y,r = x0,y0,r0 if success == 0.

% x = x0;
% y = y0-1;
% r = r0;
% 
% success = 1;
    N = size(X, 1);  % Number of data points
    J = zeros(N, 3); % Jacobian matrix

    % Compute the residuals and Jacobian
    for i = 1:N
        xi = X(i, 1);
        yi = X(i, 2);
        
        % Distance to the circle center
        dist_to_center = sqrt((xi - x0)^2 + (yi - y0)^2);
        
        % Residual
        d = dist_to_center - r0;
        
        % Jacobian entries
        J(i, 1) = (x0 - xi) / dist_to_center; % Partial derivative w.r.t. x0
        J(i, 2) = (y0 - yi) / dist_to_center; % Partial derivative w.r.t. y0
        J(i, 3) = -1;                        % Partial derivative w.r.t. r
    end

    % Residual vector
    residuals = sqrt((X(:, 1) - x0).^2 + (X(:, 2) - y0).^2) - r0;

    % Levenberg-Marquardt update
    H = J' * J; % Approximate Hessian matrix
    g = J' * residuals; % Gradient
    update = (H + mu * eye(3)) \ -g; % Solve for parameter update

    % Apply the update
    x_new = x0 + update(1);
    y_new = y0 + update(2);
    r_new = r0 + update(3);

    % Check if the update improves the fit
    new_residuals = sqrt((X(:, 1) - x_new).^2 + (X(:, 2) - y_new).^2) - r_new;
    if sum(new_residuals.^2) < sum(residuals.^2)
        % Update is successful
        x = x_new;
        y = y_new;
        r = r_new;
        success = 1;
    else
        % Update is not successful, keep old parameters
        x = x0;
        y = y0;
        r = r0;
        success = 0;
    end
end
