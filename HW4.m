%% HW4
clc; clear; clear all;
%% 2a

sum = 1;
count = 1;
while sum <= 30
    count = count + 1;
    sum = sum + (1/count);
end

%% 2b
format long

sum_1 = 0;
for i= 1:400000000
    sum_1 = sum_1 + (1/i);
end

sum_2 = 0;
for i = 4000000:-1:1
    sum_2 = sum_2 + (1/i);
end


sum_1
sum_2

error = abs(sum_1 - sum_2)

%% 3b
format long
A = [10 5;20 10]
B = [20; 40]
X= A\B

%% 4 
clc; clear; clear all;
f = @(x) [x(1).^2/186^2 - x(2).^2/(300^2 -186^2) - 1; (x(2)-500).^2/279^2 - (x(1)-300).^2/(500^2-279^2) - 1];
J = @(x) [2*x(1)/186^2 -2*x(2)/(300^2-186^2); -2*(x(1)-300)/(500^2-279^2) 2*(x(2)-500)/279^2];

p = sysNewton(f,J,[0 -2000],1e-8)


%% 5

clc; clear; clear all;
format short
f = @(x) [x(3)^2 - (x(1)^2)*x(2); x(1)*x(2)-exp(-x(3))-1; x(1)*x(2)*x(3)-5];
J = @(x) [-2*x(1)*x(2) -x(1)^2 2*x(3);
    x(2) x(1) exp(-x(3));
    x(2)*x(3) x(1)*x(3) x(1)*x(2)];
J([100 1 -1])
sysNewton(f,J,[100 1 -1],10^-12)


%% 23
format long
x = 2.5

10*0 + 5*4

5*0 + 2.5 * 4