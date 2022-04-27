<<<<<<< HEAD
%% HW7

%% 3
v = [4.1 3.8 3.2 2.7 3.1 3.4];
I = firstDeriv(v,0.2);
x = 0:0.2:1;
plot(x,I);
xlabel("Time (s)")
ylabel("Current (A)")
title("Current Approx")

%% 4
clc; clear; clear all;

h(1) = 0.05;
approx = (exp(2+h)-exp(2-h)) / (2*h);
while h(end) >= 10e-13
    h = [h h(end)/2];
    approx = [approx (exp(2+h(end))-exp(2-h(end))) / (2*h(end))];
end

err = abs(exp(2) - approx);

loglog(h,err)
xlabel("h value")
ylabel("error")
title("Centered Difference Test Case (e^x)")

%% 5
clc; clear; clear all;
f = @(x) 1/(2*pi()) * exp(-(x.^2)./2)
approx = myTrap(f,-1,1,30);

error = integral(f,-1,1) - approx
x = (error <= 10^-5)
=======
%% HW7

%% 3
v = [4.1 3.8 3.2 2.7 3.1 3.4];
I = firstDeriv(v,0.2);
x = 0:0.2:1;
plot(x,I);
xlabel("Time (s)")
ylabel("Current (A)")
title("Current Approx")

%% 4
clc; clear; clear all;

h(1) = 0.05;
approx = (exp(2+h)-exp(2-h)) / (2*h);
while h(end) >= 10e-13
    h = [h h(end)/2];
    approx = [approx (exp(2+h(end))-exp(2-h(end))) / (2*h(end))];
end

err = abs(exp(2) - approx);

loglog(h,err)
xlabel("h value")
ylabel("error")
title("Centered Difference Test Case (e^x)")

%% 5
clc; clear; clear all;
format long

f = @(x) exp((-x.^2)/2)/sqrt(2*pi());


exact = integral(f,-1,1);

<<<<<<< Updated upstream
approx_e = myTrap(f,-1,1,128);
err_e = abs(exact - approx_e)
>>>>>>> 3af70cf0a9033dd53b8859aad17fa96f8d5b8bc5
=======
approx_e = myTrap(f,-1,1,164)
err_e = abs(exact - approx_e)
>>>>>>> Stashed changes
