function x = fit_temps(t,T,omega)

[rows,~] = size(t);

B = t;
A(1:rows,1) = 1;

% Výpočet
D(1:rows,1) = 1; % Předpřipravení
for i = 1:rows
    D(i,1) = cos(omega*t(i,1));
end

C(1:rows,1) = 1; % Předpřipravení

% Výpočet
for k = 1:rows
    C(k,1) = sin((omega)*t(k,1));
end


% Složení
E = [A,B,C,D];
%E_p = inv(E.' * E) * E.';
x = E\T;
end