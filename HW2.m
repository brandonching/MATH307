%% HW2

%% 1a
f = @(x) x-0.8*sin(x)-0.1;

[p,n] = bisect(f,0,1,0.2);

%% 1b

f = @(x) x-0.8*sin(x)-0.1;
fprime = @(x) 1-0.8*cos(x);

[p,n] = myNewton(f,fprime,1,0.1);

%% 2

l = 100;
beta = 50;
h = 44;
D = 55;

A = l*sind(beta);
B = l*cosd(beta);
C = (h+0.5*D)*sind(beta) - 0.5*D*tand(beta);
E =(h+0.5*D)*cosd(beta) - 0.5*D;

f = @(x) A*sind(x)*cosd(x) + B*(sind(x)^2) - C*cosd(x) - E*sind(x);
[p,n] = secant(f,1,2,10^-8)

%% 3

format long
q = 8;
L = 48;
E = 1.8e6;
I = 5.1;

d = @(x) ((q*x)*(L^3-2*L*x^2+x^3)) / (24*E*I);
dprime = @(x) (L^3*q-6*L*q*x^2+4*q*x^3) / (24*E*I);

[p,n] = myNewton(d,dprime,1,1e-8)
max_d = d(p)

%% 4

format long
g=9.81;
Q = 20;

f = @(y) (Q^2/(g*(3*y + y^2/2)^3))*(3 + y)-1;
[p,n] = bisect(f,1,2,1e-8)


%% 5

f = @(x) x^3
[p,n] = secant(f,1,2,1e-8)

%% 

f = @(x) q/(24*E*I)*(L^3-6*L*x^2 + 4*x^3);
f(1)
t = @(x) (q*
x/(24*E*I))*(L^3-L*x^2 + x^3);
t(1)