function d = dist(X,x0,y0,r)
% function d = dist(X,x0,y0,r)
%
% INPUT: 
% X: n-by-2 vector
%    with data
% x0, y0 are the coordinates of the circle center.
% r is the circle radius
%
% OUTPUT: 
% d: 1-by-N vector of *signed* distances of all points 
%    from the circumference. 
 
%[N ~] = size(X);
%d = zeros(1,N)+x0+y0;
   
% INPUT: 
% X: n-by-2 matrix where each row is a point (x_i, y_i)
% x0, y0: coordinates of the circle's center
% r: radius of the circle
%
% OUTPUT: 
% d: 1-by-n vector of signed distances of all points from the circumference

% Determine the number of points
N = size(X, 1);

% Initialize the distance vector
d = zeros(1, N);

% Calculate the signed distance for each point
for i = 1:N
    % Extract the point coordinates
    x = X(i, 1);
    y = X(i, 2);

    % Calculate the distance from the point to the center of the circle
    dist_to_center = sqrt((x - x0)^2 + (y - y0)^2);

    % Subtract the radius to get the signed distance to the circumference
    d(i) = dist_to_center - r;
end
end