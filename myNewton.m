function [p,n] = myNewton(f,fprime,x0,tol)
%input f, anonymous function for root finding problem
%input fprime, anonlymous function, the derivative of f
%input x0, an initial guess
%input tol, a tolerance (method will stop when successive iterates are within tol of each other)
%output p, a root f(p) = 0
%output n, the number of iterations to reach p
n=2;
p= x0 - (f(x0)/fprime(x0));

while (abs(x0-p) > tol)
    n = n + 1;
    x0 = p;
    p = p - (f(p)/fprime(p));
end
end