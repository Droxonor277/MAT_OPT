function x = vyhra(c, k)

% Koeficienty pro funkci cíle jsou nulové, protože maximalizujeme proměnnou z
c_obj = [0, 0, 0, 0, 0, -1.0].';  % Přidán z na konec

% Omezení pro různé výsledky
A = [
    -c(1), -c(2), 0, 0, 0, 1.0;  % Výhra domácích
    0, -c(2), -c(3), -c(4), 0, 1.0;  % Remíza
    0, 0, 0, -c(4), -c(5), 1.0   % Výhra hostů
    ];
    b = [0, 0, 0];  % Hodnoty na pravé straně jsou nulové
    
    % Omezení: součet sázek musí být roven k
    A_eq = [1.0, 1.0, 1.0, 1.0, 1.0, 0.0];
    b_eq = k;
    
    % Řešení lineárního programu
    %options = optimoptions('linprog','Algorithm','dual-simplex');
    lb = double([0 0 0 0 0 0]);
    up = [inf inf inf inf inf inf];
    res = linprog(c_obj, A, b, A_eq, b_eq, lb, up);
    
    % Vrácení výsledku
    x = res(1:end-1);
end
