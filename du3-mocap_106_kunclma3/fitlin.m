function [U, C] = fitlin(A, k)
    % Singulární rozklad matice A
    [U_svd, ~, ~] = svd(A);
    
    % Výběr prvních k sloupců z U
    U = U_svd(:, 1:k);
    
    % Výpočet C pomocí vzorce (2)
    C = U.' * A;
end