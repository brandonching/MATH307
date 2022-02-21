%% MGIC6: While Loops

%% Find a number

x = 3
while 5 < (5 + sin(x)*exp(x))
    x = x + 10^-6;
end
%% Prime factorization

x = 8915087321786783;
factor1 = 86028401
factor2 = 103629583

while ~(mod(factor1, factor2) == 0)
    break
end


function x = factor(varargin)
x = fprintf('This program uses the function factor, which is not allowed to be used for this homework assignment.\n');
end
