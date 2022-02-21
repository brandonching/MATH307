%% MGIC9: Roundoff error

%% Will roundoff error affect the result? (I)

format long
% We want to compute the quatity Q = x/y;
% First set x = 0.1 and y = 10^50;
% The exact value should be 10^-51.
x = 0.1;
y = 10^50;
Q = x/y

% Will roundoff error affect the result? Hint: compute the error!
% If roundoff error will not affect the result set r = 0;
% If subtraction of similar numbers occurs, set r = 1;
% If adding/subtracting on different scales occurs, set r = 2;
% If diving by small numbers occurs, set r = 3;
r = 0

% Now set x = 0.1 and y = 10^-50; 
% The exact value should be 10^49.  
x2 = 0.1;
y2 = 10^-50;
Q2 = x2/y2

% Will roundoff error affect the result? Hint: compute the error!
% If roundoff error will not affect the result set r2 = 0;
% If subtraction of similar numbers occurs, set r2 = 1;
% If adding/subtracting on different scales occurs, set r2 = 2;
% If diving by small numbers occurs, set r2 = 3;
r2 = 3

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Can you fix the roundoff error here? %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Will roundoff error affect the result? (II)

format long
% Will roundoff error occur?
% If roundoff error will not affect the result set r1 = 0;
% If subtraction of similar numbers occurs, set r1 = 1;
% If adding/subtracting on different scales occurs, set r1 = 2;
% If diving by small numbers occurs, set r1 = 3;
sum1 = 10^16+1
r1 = 2

% Will roundoff error occur?
% If roundoff error will not affect the result set r2 = 0;
% If subtraction of similar numbers occurs, set r2 = 1;
% If adding/subtracting on different scales occurs, set r2 = 2;
% If diving by small numbers occurs, set r2 = 3;
diff1 = 10^16-1
r2 = 2


% Will roundoff error occur?
% If roundoff error will not affect the result set r3 = 0;
% If subtraction of similar numbers occurs, set r3 = 1;
% If adding/subtracting on different scales occurs, set r3 = 2;
% If diving by small numbers occurs, set r3 = 3;
sum2 = 10^16+10^15
r3 = 0


% Will roundoff error occur?
% If roundoff error will not affect the result set r4 = 0;
% If subtraction of similar numbers occurs, set r4 = 1;
% If adding/subtracting on different scales occurs, set r4 = 2;
% If diving by small numbers occurs, set r4 = 3;
diff2 = 10^16-10^15
r4 =0

% Compute the gap between 10^16 and the next storable number
gap = eps(10^16)

%%%%%%%%%%%%%%%%%%%%%%%
% Can these be fixed? %
%%%%%%%%%%%%%%%%%%%%%%%
%% Will roundoff error affect the result? (III)

format long
% Consider y = x^2 + 3000.001x + 3.
a = 1;
b= 3000.001;
c = 3;

% We want to find a root of this quadratic.
% The exact roots are -0.001 and -3000
% The quadratic formula says the roots are:
x1 = (-b+sqrt(b^2-4*a*c))/(2*a)
%hint: check the value of sqrt(b^2 - 4*a*c)
sqrt(b^2-4*a*c)

% Does x1 have roundoff error?  
% If roundoff error will not affect the result set r1 = 0;
% If subtraction of similar numbers occurs, set r1 = 1;
% If adding/subtracting on different scales occurs, set r1 = 2;
% If diving by small numbers occurs, set r1 = 3;
r1 = 1

x2 = (-b-sqrt(b^2-4*a*c))/(2*a)
% Does x2 have roundoff error?
% If roundoff error will not affect the result set r2 = 0;
% If subtraction of similar numbers occurs, set r2 = 1;
% If adding/subtracting on different scales occurs, set r2 = 2;
% If diving by small numbers occurs, set r2 = 3;
r2 =0

% Find an equivalent expression to fix the roundoff error in x1.
% Save the result as x1_better 
% hint: multiply and divide by the conjugate (-b-sqrt(b^2-4ac))
x1_better = (-b+sqrt(b^2-4*a*c))/(2*a)