function x = vyhra2(c, k, m)
    % Kurzy pro různé události
    c1 = c(1);
    c0 = c(2);
    c2 = c(3);

    % Koeficienty pro lineární programování
    f = [0, 0, 0, -1]; % Cílová funkce (minimalizace)
    A = [-c1, 0, 0, 1;
        0, -c0, 0, 1;
        0, 0, -c2, 1]; 
    
    b = [0 0 0];
    Aeq = [1, 1, 1, 0];
    beq = k;

    % Hranice pro proměnné
    lb = [m, m, m,0];
    ub = [inf inf inf inf];
    %options = optimoptions('linprog','Algorithm','interior-point');
    % Řešení lineárního programu
    x = linprog(f, A, b, Aeq, beq, lb, ub);
    x = x(1:end-1).';
end