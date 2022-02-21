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