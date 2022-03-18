function p = sysNewton(f,J,x1,tol)
% f is the system of equations as a column vector
%   this an anonymous function with a vector input and vector output
% J is the Jacobian of the system
%   this is an anonymous function with a vector input and matrix output
% x1 is a set of initial guesses (in a column vector)
% tol is a tolerance
p = x1 - J(x1) \ f(x1);

while abs(p - x1) > tol
    x1 = p;
    p = x1 - J(x1) \ f(x1);
end