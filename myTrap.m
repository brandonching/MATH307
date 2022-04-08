function s = myTrap(f,a,b,n)
% Trapezoid rule
% Input: f = integrand (anonymous function)
% Input: a = left end of integral
% Input: b = right end of integral
% Input: n = number of intervals/trapezoids
% Output: s = approximation of integral of f from a to b
x= linspace(a,b,n+1)
s=0;
h=(b-a)/n;
for i= 1:n
    s=s+ h*(f(x(i)) + f(x(i+1)))/2;
end