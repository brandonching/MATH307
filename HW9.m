%% HW 9
clc; clear; clear all;
%% 1

f = @(x) exp(sin(x));

n = 3;
[xx, ww] = gaussquad(n,0,2*pi());
approx = sum(ww.*f(xx));

%% 2
f = @(t, y) -5*t/y + 1;
[t, y] = myEuler(f,[1 1.2], 2, 0.1); %2a
[t, y] = rkMid(f,[1 1.2], 2, 0.1); %2b
[t, y] = myEuler(f,[1 1.5], 2, 0.01); %2c
[t, y] = myEuler(f,[1 1.5], 2, 10^-5); %f
idx = 1;
while y(idx) >= 0
    idx = idx + 1;
end
plot(t(1:idx),y(1:idx))

%% 3
k = 0.07;
T_0 = 195;
T_out = 72;
f = @(t,y) -k*(y-T_out);
[t, y] = rkMid(f,[0 60], T_0, 0.1);
plot(t,y);
xlabel("Time (minute)")
ylabel("Tempature (F)")
title("Newton's Law of Cooling for coffee cup")

time = 1;
while y(time) >= 160
    time = time + 1;
end

%% More 3
k = 0.07;
T_0 = 195;
T_out = 72;
f = @(t,y) -k*(y-T_out);
[t1, y1] = myEuler(f,[0 60], T_0, 0.1);
[t2, y2] = rkMid(f,[0 60], T_0, 0.1);
[t3, y3] = rk4(f,[0 60], T_0, 0.1);

exact = T_out + (T_0 - T_out)*exp(-k*60);
euler_error = abs(exact - y1(end));
rkmid_error = abs(exact - y2(end));
rk4_error = abs(exact - y3(end));

[t11, y11] = myEuler(f,[0 60], T_0, 0.01);
[t12, y12] = rkMid(f,[0 60], T_0, 0.01);
[t13, y13] = rk4(f,[0 60], T_0, 0.01);

exact = T_out + (T_0 - T_out)*exp(-k*60);
euler_error2 = abs(exact - y11(end));
rkmid_error2 = abs(exact - y12(end));
rk4_error2 = abs(exact - y13(end));

euler_error/euler_error2
rkmid_error/rkmid_error2
rk4_error/rk4_error2

%% 4
f = @(t, y) (1/2)*y*(1-(y/10)) - (y^2)/(1+y^2);
fun = @(y) f(0 ,y)
root = fzero(fun,7)

[t1, y1] = rk4(f,[0 20],0.5 ,0.1);
[t2, y2] = rk4(f,[0 20],1 ,0.1);
[t3, y3] = rk4(f,[0 20],5 ,0.1);
[t4, y4] = rk4(f,[0 20],8 ,0.1);

hold on
plot(t4, y4, 'LineWidth', 2)
plot(t3, y3, 'LineWidth', 2)
plot(t2, y2, 'LineWidth', 2)
plot(t1, y1, 'LineWidth', 2)

xlabel("Time")
ylabel("Population")
title("Spruce Budworm Population over time")
legend("Above Outbreak Level","Between 2nd Eq and Outbreak Level", "Between Refuge Level and 2nd Eq", "Below Refuge Level")