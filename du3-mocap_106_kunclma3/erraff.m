function [d,S] = erraff(A)
    % Input:
    %   A: The matrix to be approximated (m x n)
    % Output:
    %   approximations: Cell array containing the best rank-k approximations
    %   errors: Vector containing Frobenius norm of the approximation errors

    [m, n] = size(A);
    %approximations = cell(1, m);
    d = zeros(1, m);

    % Step 1: Center the matrix A
    meanA = mean(A, 2); % Compute mean along each column
    A_centered = A - meanA;

    % Step 1: Singular Value Decomposition (SVD) of A_stripe
    [U, S, Vh] = svd(A_centered, 'econ');
    
    % Step 2: Square the singular values
    s_sq = diag(S).^2;
    
    % Step 3: Calculate the sum of squares of the approximation errors for different ranks
    d = zeros(size(s_sq));
    for i = 1:length(s_sq)
        d(i) = sum(s_sq(i+1:end));
    end
end