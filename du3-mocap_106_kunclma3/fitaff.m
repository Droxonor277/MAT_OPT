function [U,C,b0] = fitaff(A,k)
   
B = A - repmat(mean(A, 2), 1, size(A, 2));
[U,C] = fitlin(B,k);
b0 = mean(A, 2) - mean(U * C, 2);

end


% function [U,C,b0] = fitaff(A,k)
%
% INPUT: 
% A: m-by-n matrix
%    with data
% k: scalar, dimension of affine approximation
%
% OUTPUT:
% U: m-by-k matrix
%	columns form an orthonormal basis
% C: k-by-n matrix
%	columns contain coordinates w.r.t the basis
% b0: m-by-1 matrix
%	point of the affine space
%  

%U = A(:, 1:k);
%C = A(1:k, :);
%b0= A(:,1);

%m = size(A,1);
%n = size(A,2);

%[U_svd, ~, ~] = svd(A);
%U = U_svd(:, 1:k);
%C = U.' * A;
%B = U*C;
%[U,C] = fitlin(B,k);
%b0 = mean(A, 2)-mean(U*C, 2); 