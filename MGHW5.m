%% MGHW5: Root-finding methods

%% Bisection Method
function [p,n] = bisect(f,a,b,tol)
%input f, anonymous function for which we'd like to find a root
%inputs a,b left and right ends for which f(a)*f(b) < 0 (so that there is a root in [a,b])
%input tol a tolerance, algorithm stops when we are within tol of an actual root
%output p, the approximate root, we set p to be the midpoint of the first interval smaller than tolerance in length
%output n, the number of bisections to reach p
n = 1;
p=(a+b)/2;

while (b-a > tol)
    n = n + 1;
    if ((f(a) * f(p)) < 0)
        b = p;
        p = (a+p)/2;
    else
        a = p;
        p = (p+b)/2;
    end
    
end
end

%% Newton's Method
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

%% Secant method

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