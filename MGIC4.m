%% MGIC4: Dot Operator, Plotting

%% Dot or no dot? (dot operator)

x = [2,8,-1,4];  
y = [9,3,3,-2];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reflect: Before each task, do the computation in your head. %
%          After making Matlab do it, check Matlab's answer.  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Define p1 to be the vector where each entry is the corresponding entry of x divided by 2.  
p1=x/2
d1=0

%Define p2 to be the vector where each entry is the sine of the corresponding entry of x.
p2=sin(x)
d2=0

%Define p3 to be the vector where each entry is the corresponding entry of x divided by the corresponding entry of y.
p3=x./y
d3=1

%Define p4 to be the vector where each entry is the corresponding entry of y cubed.
p4=y.^3
d4=1

%Define p5 to be the vector where each entry is twice the corresponding entry of x divided by (3 times the corresponding entry of y).
p5=2*x./(3*y)
d5=1

%Define p6 to be the vector where each entry is 1 added to x
p6=x+1
d6=0

%Define p7 to be the vector where each entry is corresponding entries of sin(x)*y/log(y+3)
p7=sin(x).*y./log(y+3)
d7=2
%% Sneaky division

x = [1,4,9,2];
y = [7,3,1,5];

% Create z using dot operator
z= x./y
% Create badz using regular division
badz = x/y

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% So, what is badz = x/y?  This is the value    %
% x*inv(y). However, since y doesn't have a     %
% proper inverse, Matlab uses the Moore-penrose %
% pseudoinverve.  In other words, we won't ever %
% divide vectors in Math 307! We'll only use    %
% element-wise division.                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Use the dot operator to fill in an array

% Create i-array
i=1:50
% Create x-array using the dot operator
x= factorial(2*i)./(factorial(i).*factorial(i+1))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tip: dot operators are typically more efficient than for-loops. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Basic plot #1 (bad resolution)

% Create the vectors necessary to do the plotting
x = linspace(0,4,10);
f = sin(x).*exp(x);
g = tan(x).*exp(x);

% Now plot the two curves on the same figure
plot(f,g); hold on
%% Basic plot #2 (better resolution)

% Create the vectors necessary to do the plotting
x = linspace(0,4,1000);
f = sin(x).*exp(x);
g = tan(x).*exp(x);

% Now plot the two curves on the same figure
plot(f,g); hold on

% Pick better limits of the y-axis using the command ylim
ylim([-1000, 1000])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reflect: Why is the asymptote crossed?       %
% Try to find a way to plot g without crossing %
% the asymptote.                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%