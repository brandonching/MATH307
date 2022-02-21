function [p,n] = secant(f,x0,x1,tol)
%input f, root finding function
%inputs x0,x1, initial guesses 
%input tol, a tolerance (stop once successive iterates are within tol of each other)
%ouptput p, a root f(p) = 0
%output n, the number of iterations to reach p
n = 2;
p = x1 - ((f(x1))*(x1-x0))/(f(x1)-f(x0));


while abs(x0-x1) > tol
    n = n + 1;
    x0 = x1;
    x1 = p;
    p = x1 - ((f(x1))*(x1-x0))/(f(x1)-f(x0));

end
end