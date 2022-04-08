%% HW7

%% 3
v = [4.1 3.8 3.2 2.7 3.1 3.4];
I = firstDeriv(v,0.2);
x = 0:0.2:1;
plot(x,I);
xlabel("Time (s)")
ylabel("Current (A)")
title("Current Approx")