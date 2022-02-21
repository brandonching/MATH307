%% MGHW2: For loops, dot operator, plotting

%% Use a for loop to fill in an array I

% initialize the array as zeros
x = zeros(1,1000);

% fill in the first entry (doesn't follow the pattern)
x(1) = 2

% use a for loop to fill in the rest of the entries (that follow the pattern)
for i = 1:999
    x(i+1) = 3*x(i) + 1;
end
disp(x)
%% Fibonacci

n = 100;
% Use n to create fib
fib = [1 1]
for i = 3:n
    fib(i) = fib(i-1) + fib(i-2);
end
disp(fib)


function x = fibonacci(varargin)
x = fprintf('This program uses the function fibonacci, which is not allowed to be used for this homework assignment.\n');
end

%% Use a for loop to compute a sum I

% start by initializing mysum
mysum = 0

% now use a for loop to compute mysum
for i = 3:278                 % fill in the range of indices
    mysum = mysum + ((i^2 - sin(i)) / (2*i^4 + 1));      % add the next term to mysum
end
disp(mysum)

%% A known Taylor series

format long  % displays more digits when printing variable values

x = 0

for i = 0:14
    x = x + 1/factorial(i)
end
%% Averaging random integers

rng(600);  % set the random number generator so everyone gets the same result
x = randi(50, 1000, 1);

sum = 0;

for i = 1:1000
    sum = sum + x(i);
end
avg = sum/1000
%% Using arctan to approximate pi

piApprox = 0;

for n = 0:99
    piApprox = piApprox + ((-1)^n / (2*n + 1));
end
piApprox = 4*piApprox
disp(piApprox)
%% Approximate pi faster

format long %to display many decimal places
%Find sumMadhava
sumMadhava = 0;
for k=0:9
    sumMadhava = sumMadhava + ((-3)^(-k) / (2*k + 1));
end
sumMadhava = 12^(1/2)*sumMadhava

%Find sumNewton
sumNewton = 0;
for k=0:9
    sumNewton = sumNewton + (((2^k)*(factorial(k))^2) / factorial(2*k + 1));
end
sumNewton = 2*sumNewton

%Find sumRamanujan
sumRamanujan = 0;
for k=0:9
    sumRamanujan = sumRamanujan + ((factorial(4*k) * (1103 + 26390*k)) / ((factorial(k)^4)*(396^(4*k))));
end
sumRamanujan = (sumRamanujan*((2*sqrt(2)) / (9801)))^(-1)

disp(sumMadhava)
disp(sumNewton)
disp(sumRamanujan)
%% Wind chill (dot operator)

% T and V are provided for you:
T = [54 52 52 49 48 45 44 41 40 40];
V = [20 22 21 26 31 20 19 17 21 22];

% Create Twc
Twc = 35.74 + 0.6215*T - 35.75*V.^0.16 + 0.4275*T.*V.^0.16
% How many times was the dot operator necessary?  Store the result as the variable nDot.
nDot = 3
%% Simple Circuit (dot operator, plotting)

%circuit problem (find the load resistance that maximizes power in the circuit)

%Define V, Rl, RS
V = 130;
Rl = 1:.1:110;
Rs = 25;

%From V, Rl, Rs, compute arrays I and P
I = V./(Rs + Rl);
P = (I.^2).*Rl;


%Use max command to get max power 
Pmax = max(P)

% Plot current vs power (done for you, how nice of us!)
plot(Rl,P);

%% Elastic deflection (dot operator, plotting)

% Initial set up
q = 8;
E = 1.8e6;
I = 5.1;
L = 48;

% Create x-array (evenly spaced array of the x-position of the beam using 1000 points)
x = linspace(0,48,1000);

% Use the variables q, E, I, and L to define delta.
delta = ((q*x) / (24*E*I)) .* (L^3 - 2*L*x.^2 + x.^3);

% How many dot-operators were necessary?
ndot = 3;  % Report exactly how many times you needed to use the dot operator to create delta

% A deflection value for comparison
d = 0.05;   

% Plot two things at once
plot(x,delta);      % plot the deflection of the beam.
hold on;            % this command "holds" all previous plots "on" the figure and allows you to plot another one.
plot([0,L],[d,d]);  % take a moment to figure out what this does...