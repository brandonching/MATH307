%% HW 10
clc; clear; clear all;
%% 1
r=10;
p=1;
f = @(t,w) [w(1)*(1-(w(1)/w(2))) ,r*w(2)*(1-w(2)) - (p/w(1)) ];
[t, w] = eulerSys(f, [0 20], [0.5 1], 0.1);
plot(t,w,"-o")
xlabel("Time (s)")
legend("S(t) Average Branch Surface Area", "E(t) Evergy Reserve")
title("Spruce Budworm Dynamics")

%% 2

gamma = 10^5;
d_h = 0.1;
d_i = 0.5;
d_v = 5;
beta = 2*10^-7;
N=30;
f = @(t,w) [gamma - d_h*w(1) - beta*w(1)*w(3) ,beta*w(1)*w(3) - d_i*w(2) ,N*d_i*w(2) - d_v*w(3) - beta*w(1)*w(3) ];
[t,w] = rk4sys(f,[0 500], [10^6 0 1],0.1);

plot(t,w,"-o")
xlabel("Time (s)")
ylabel("Cells")
title("T cell and virus Dynamics - N = 30")
legend("H(t) Healty Cells","I(t) Infected Cells","V(t) Viral Load")

%% 3
f = @(t,w) sin(t+w^2);

[t,w] = myRKF(f,[1 10],2,10^-3);

plot(t,w,"-o")


%% 4
alpha = 0.01;
beta = 0.001;
lambda = 0.03;
gamma = 0.003;

f = @(t,w) [alpha*w(1) - beta*w(1)*w(2); lambda*w(2) - gamma*w(1)*w(2)];
[t,w] = ode45(f,[0 100],[100 200]);
plot(t,w,"-o")
xlabel("Time")
ylabel("Population")
title("Predator-Prey Competing for Same Resources")
legend("x(t) Species X" , "y(t) Species Y")

%% 5
[t,y] = ode45(@rocket,[0 15],[0 0 0.1536]);
plot(t,y(:,2),"-o")
xlabel("Time")
ylabel("Height (m)")
title("Rocket Height")