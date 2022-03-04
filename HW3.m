% HW 3
clc; clear; clear all;
%% 2e

f = @(x) -(x-6.3)*(x-1)^2 / x;
fprime = @(x) - (2*x^3 - 8.3*x^2 + 6.3) / x^2;

bisect(f,0.5,2,1e-8) % Doesnt Work
myNewton(f,fprime,0.5,1e-8)
secant(f,0.5,0.75,1e-8)

%% 2f

f = @(x) -(x-6.3)*(x-1)^2 / x;
fprime = @(x) - (2*x^3 - 8.3*x^2 + 6.3) / x^2;

bisect(f,6,7,1e-8)
myNewton(f,fprime,6,1e-8)
secant(f,4,5,1e-8)

bisect(f,0,8,1e-8)