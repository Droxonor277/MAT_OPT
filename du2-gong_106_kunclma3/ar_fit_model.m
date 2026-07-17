function [a] = ar_fit_model(y, p)

T = length(y);
M(T-p,1+p) = 0;
M(1:end,1) = 1;
i = 1;
while i <= length(M)
    M(i,2:end) = y((p+i-1):-1:i);
    i = i +1;
end
b = y(1+p:T);
a = M\b;

