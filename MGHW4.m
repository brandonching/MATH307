%% MGHW4: m-file functions (single output)

%% Dog years

function D = dogYears(T)
    D = 16*log(T)+31
end
%% Overtime wages

function check = wages(hours)
    if hours > 40
        check = ((hours - 40) * (25 * 1.5)) + 1000
    else
        check = hours * 25
    end
end

%% Bacteria

% The code for odesolve.m is not available for you to look at.  It is stored inside Matlab Grader.  
% Think of it as a built-in function.  In order to know how to use it, type:
help odesolve  % tells you how to use inputs and outputs of odesolve-- hit "run" in Grader to see the comments.

K = 0.001
while odesolve(K) < 95
    K = K + 0.001
end
K
%% Density of freshwater

function rho = density(T)
%input T is an array of temperatures in Fahrenheit
%output rho is an array of densities corresponding to the temperatures in T

%convert F to C
CfromF = @(F) 5*(F-32)/9;
T_C = CfromF(T)
rho = 5.53e-8*T_C.^3 - 8.5e-6*T_C.^2 + 6.56e-5*T_C + 1

%% The Collatz Conjecture

function count = collatz(n)

%initialize count
count = 0

%while loop to run the Collatz process
while n ~= 1
    if ~mod(n, 2)
        n = n /2
    else
        n = n*3 + 1
    end
    count = count + 1
end
n
%% The Collatz Conjecture II

% A working version of collatz.m is saved inside Matlab Grader.  

% Create x
x = 1:10000;

% Create y by calling the collatz function
y = zeros(1,10000);
for n = 1:10000
    y(n) = collatz(n);
end
% Plot the result 
plot(x,y,'o');
%% Day Counter

function d = daycount(day, month, year)

%start counter at 0
d = 0;

%add either 365 or 366 for each year from 780 to year-1
%call function leap (defined below) to determine leap years
for y = 780:year-1
    yesno = leap(y);
    if yesno
        d = d + 366;
    else
        d = d + 365;
    end
end


%add either 28, 29, 30, or 31 days each month in current year from January to month-1
%call function leap (defined below) to determine leap years
switch month
    case 2
        d = d + 31;
    case 3
        d = d + 59;
    case 4
        d = d + 90;
    case 5
        d = d + 120;
    case 6
        d = d + 151;
    case 7
        d = d + 181;
    case 8
        d = d + 212;
    case 9
        d = d + 243;
    case 10
        d = d + 273;
    case 11
        d = d + 304;
    case 12
        d = d + 334;
end

%add days in current month
d = d + day;
end 

function yesno = leap(year)
%set yesno to 1 if year is a leap year
%set yesno to 0 if year is not a leap year
if mod(year, 400) == 0
    yesno = 1;
elseif (mod(year, 4) == 0)
    if not(mod(year, 100) == 0)
        yesno = 1;
    else
        yesno=0
    end
else
    yesno = 0;
end
end