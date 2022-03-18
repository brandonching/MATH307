%% HW 6

%% 1

x = [-1 0 2 4];
y = [2 1 0 3];
z = linspace(x(1),x(end),10000);
P = cubicInterp(x,y,z);

plot(x,y,'.','MarkerSize',25); hold on
plot(z,P); hold off

%%  2

x = [0 4 8 10 16 18 24 28 29 32 34 38 40];
y = [14.6210 12.9100 11.8430 11.4100 9.8700 9.5210 8.4180 7.7010 7.3810 7.3050 6.9650 6.5200 6.4130];
z = linspace(x(1),x(end),10000);
P = cubicInterp(x,y,z);

plot(x,y,'.','MarkerSize',25); hold on
plot(z,P); hold off
ylabel("Disolved Oxygen (mg/L)")
xlabel("Tempature (C)")
title("Sea-Level Concentration of Dissolved Oxygen for Fresh Water")

P = cubicInterp(x,y,17)

%% 3
clc;clear;clear all;
format long
x = [0 4 8 10 16 18 24 28 29 32 34 38 40];
y = [14.6210 12.9100 11.8430 11.4100 9.8700 9.5210 8.4180 7.7010 7.3810 7.3050 6.9650 6.5200 6.4130];
z = linspace(x(1),x(end),10000);
n = length(x);

intercept = (sum(x.^2)*sum(y) - sum(x.*y)*sum(x)) / (n*sum(x.^2) - sum(x)^2)
slope = (n*sum(x.*y) - sum(x)*sum(y)) / (n*sum(x.^2) - sum(x)^2)
y1 = slope*z + intercept;
plot(x,y,'.','MarkerSize',25); hold on
plot(z,y1); hold off

P = slope*17 + intercept