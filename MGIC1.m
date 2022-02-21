%% MGIC1: Basic Matlab

%% Basic variables

% Create a variable named x, and set its value to 5.
x=5;

% Now create a variable named y, and set its value to 9.
y=9;

% Create a variable called z, and set it to the sum of x and y.  Do not do the math in your head.
z=x+y;

% Set x equal to what it was before, plus one more.  Again, do not do the math in your head.
x=x+1;

% Set y equal to the product of x, y, and z.  
y=x*y*z;

% Set z equal to what it was before, multiplied by 8.
z=z*8

% Set P equal to the value of 2 raised to the power of one less than z. 
P=2^(z-1)

%% Matlab like a calculator

x = -2; 
y = 4;
% When you're done, try printing the results in various formats:
%format short  % 4 digits after decimal place
%format long   % 15 digits after decimal place
%format shortE % scientific notation with 4 digits after decimal place
%format longE  % scientific notation with 15 digits after decimal place
%format rat    % nearest ratio of integers 

% Use x and y to compute p1 through p4.  Use the variable names in the computations.

p1=-2*x^2*y^3
p2=(x^2+y)/(x+3*y)^2
p3=exp(-3*y)*sin(pi*y/3)
p4=log(-2*x*y)

%% Scientific notation, overflow and underflow

% Create a variable x and set it equal to 10^5.  Use scientific notation to make x.
x=10^5

% Create a variable y and set it equal to e^x.  Print the result-- is it what you expected?
y=exp(1)^x

% Create a variable z and set it equal to e^-x.  Print the result-- is it what you expected?
z=exp(1)^-x

%% Don't use clear in Matlab Grader

% This script makes x = 1 and clears existing variables first.
 % clear existing variables in MATLAB workspace
x = 1;  % make a variable called x and set it equal to 1