function x = fit_wages(t,M)

[rows,colums] = size(t);

B = t;
A(1:rows,1) = 1;
C = [A,B];

% 1. možnost - nestabilní na výpočet
% Alternativně:C_p = inv(C.' * C) * C.';

% 2. možnost - stabilnější na výpočet
x = C \ M;

end