function [a, b, r] = minimaxfit(x, y)
    [n, m] = size(x);

    % Příprava matice A a vektoru b pro lineární programování
    A = [x.' ones(m,1) -ones(m,1);
        -x.' -ones(m,1) -ones(m,1)];
    b = [y -y];
    size(A);
    size(b);
    % Koeficienty pro funkci cíle
    f = [zeros(1, n+1) 1];
    size(f);
    % Řešení lineárního programu
    abe = linprog(f, A, b);



    a = abe(1:n);
    b = abe(n+1);
    r = abe(end);
end