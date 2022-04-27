function s = mySimp(f,a,b,n)
% Simpsons Rule
% Input: f = function handle of the integrand
% Input: a = left end of integral
% Input: b = right end of integral
% Input: n = number of intervals -- must be even!
% Output: s = approximation of integral of f(x) from a to b
x= linspace(a,b,n+1)
s=0;
h=(b-a)/n;

for i= 2:2:n
    s=s+ (h/3)* (f(x(i-1)) + 4*f(x(i)) + f(x(i+1)));
end