%% HW 9
clc; clear; clear all;
%% 1

f = @(x) exp(sin(x));

n = 3;
[xx, ww] = gaussquad(n,0,2*pi());
approx = sum(ww.*f(xx))