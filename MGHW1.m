%% MGHW1: Scripts and Vectors

%% Defining variables in Matlab

% Create a variable with a value of 2.  Name it x.
x=2

% Compute the sine of x.  Store the result as y.
% Note that Matlab will always compute trig in radians.  
y=sin(x)

% Compute the natural log of y.  Store the result as z.
z=log(y)

% Compute the quantity Q = (4x-3y)/z^2.  
Q = (4*x-3*y)/z^2

%% Rules for naming variables

% Make a variable named (lowercase) x and set it equal to 7.
x=7

% Make a variable named (capital) X and set it equal to 8. 
% Note that capitalization matters.
X=8

% These variable names aren't very descriptive.  
% Suppose lowercase x represents the number of dogs I own (it doesn't!).  
% Make a variable named "dogs" and set it equal to 7.
dogs=7

% You can include numbers in variable names, but they can't be the first thing.  
% Make a variable called my8cats and set it equal to 8.
my8cats=8

% While not illegal, it is not a good idea to use a "keyword" as a variable name.
% For instance "sin" is a built-in function for sine. 
% Don't make a variable named "sin" or else you'll lose the ability to use sine.
% Use the function "exist" to see if the word "length" is a reasonable variable name.
% exist will return a 0 if there are no existing variables, functions, or other artifacts with the proposed name. 
% Run the script to see the result of "exist length"
% In a new line, report your answer in binary.  That is, create a variable named "canIuseLength" 
% and set the value to 0 if length is reserved and 1 is length is an acceptable variable name.
exist length  % run the script to check whether "length" is reserved.  If it isn't, you'll see 0 printed.
canIuseLength=0
%% Creating vectors entry-by-entry.

v= [8 10 exp(1)^2 log(5) pi]
%% Temperature array (creating vectors)

t= 0:0.5:12
%% Why are we learning this stuff?

%define the array time
time = 0:0.01:21

%define the array x
x = linspace(-2,5,75)
%% Looking up built in functions

x = [4 -3 8 5 -12 6 0 1];

%write one command that will assign the max to M and the index (location) of the max to I
[M I] = max(x)
%% Working with vectors

x=linspace(1,4,8)

x4=x*4
xp1=x+1
expx=exp(x)
sinx=sin(x)