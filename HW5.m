%% HW5

%% 1
A=[1 2; 1 2.01];
b=[4;4.01];
c=A\b
cond(A)

%% 2
clc; clear; clear all;
x = [-1 0 2 4];
y = [2 1 0 3];
z= -1:0.1:4;

P = lagrangepoly(x,y,z);

plot(x,y,'.','MarkerSize',25); hold on
plot(z,P);
legend("Given Data", "lagrangepoly Function")

%% 3a
clc; clear; clear all;

x = [0 8 16 24 32 40];
y = [14.621 11.843 9.87 8.418 7.305 6.413];
z = 0:1:40;
P = lagrangepoly(x,y,z);

plot(x,y,'.','MarkerSize',25); hold on
plot(z,P);
xlabel("Tempature (C)")
ylabel("Dissolved Oxygen (mg/L)")
title("Sea-Level Concentration of Dissolved Oxygen for Fresh Water")
legend("Given Data", "lagrangepoly Function")

%3ab
z=17;
lagrangepoly(x,y,z)

%% 3c
clc; clear ;clear all;
x = [0 4 8 10 16 18 24 28 29 32 34 38 40];
y = [14.6210 12.9100 11.8430 11.4100 9.8700 9.5210 8.4180 7.7010 7.3810 7.3050 6.9650 6.5200 6.4130];
z = 0:0.1:40;
P = lagrangepoly(x,y,z);


plot(x,y,'.','MarkerSize',25); hold on
plot(z,P);
xlabel("Tempature (C)")
ylabel("Dissolved Oxygen (mg/L)")
title("Sea-Level Concentration of Dissolved Oxygen for Fresh Water")
legend("Given Data", "lagrangepoly Function")