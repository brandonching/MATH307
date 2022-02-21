%% MGIC5: Conditional Logic

%% Logic (inequalities)
load secretdata;
% Define L3  = count of numbers less than 3
L3 = sum(x < 3)
%        M47 = count of numbers between 4 and 7, inclusive
M47 = sum((4 <= x) & (x <=7))
%        E59  = count of numbers equal to 5 or 9
E59 = sum((x == 5) + (x == 9))

%% Plot a piecewise function

x=linspace(0,15,100);
% Define y using a for loop and the most efficient conditional statements
y = zeros(1,100);
for i = 1:100
    if x(i) <= 2*pi
        y(i) = sin(x(i));
    elseif x(i) <= 10
        y(i) = sqrt(x(i)-2*pi);
    else
        y(i) = sqrt(10-2*pi) + log(x(i)-9);
    end
end
plot(x,y,'-o');
%% Leap years

L = 0;

for year = 1:2021
    if mod(year, 400) == 0
        L = L + 1;
    elseif (mod(year, 4) == 0)
        if not(mod(year, 100) == 0)
            L = L + 1;
        end
    end
    
end

disp(L)