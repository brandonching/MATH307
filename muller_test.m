clear;  % clear previous variables from workspace
format shortE;  % displays results in scientific notation

%% 0. Start here
% define the test problem / inputs to Muller's method
f = @(x) x^4 -6*x^2 -247;   % anonymous function defining the root-finding problem
p1 = 2;  % initial guess 1
p2 = 2.5;  % initial guess 2
p3 = 3;   % initial guess 3
tol = 1e-8;  % stopping tolerance-- pick something that gives at least 8 iterations

%% Do not modify anything in this section %%

% Run Muller's method on this problem:
% Muller's method requires 3 initial guesses 
p(1) = p1; 
p(2) = p2;  
p(3) = p3;   
check = 2*tol;
k = 3;
while check > tol 
    A = [p(k-2).^2 p(k-2) 1; p(k-1).^2 p(k-1) 1; p(k).^2 p(k) 1];
    b = [f(p(k-2)); f(p(k-1)); f(p(k))];
    x = A\b;
    r1 = (-x(2)+sqrt(x(2)^2-4*x(1)*x(3)))/(2*x(1));
    r2 = (-x(2)-sqrt(x(2)^2-4*x(1)*x(3)))/(2*x(1));
    if abs(r1-p(k)) < abs(r2-p(k))
        p(k+1) = r1;
    else
        p(k+1) = r2;
    end
    check = abs(p(k+1)-p(k));
    k = k + 1;    
end

%% 1. Find the errors
% Read through the code above and decide where the iterations are being stored.
% Print results to the command window as needed.  
% Then use the iterations to compute the errors in each iteration.
% Hint: you can do this in one line of code!

e = abs(sqrt(19) - p);   % vector of errors

%% 2. Solve for alpha numerically
% On paper (not MATLAB), write two equations using the definition of convergence rate.
% The first relating error7 to error6
% The second relates error8 to error7
% Do not use numbers, use variables like e8, e7, e6.
% Algebraically solve for alpha in terms of the variables e8, e7, e6.
% Finally, write the formula in MATLAB to compute alpha for Muller's method on this test problem

alpha =  (log(e(8)) - log(e(7))) / (log(e(7)) - log(e(6))); % convergence rate of Muller's method on this problem

%% 3. Solve for alpha numerically (again)
% Now try it again with errors e5, e6, and e7.  

alpha0 =  (log(e(9)) - log(e(8))) / (log(e(8)) - log(e(7)));
alpha1 =  (log(e(7)) - log(e(6))) / (log(e(6)) - log(e(5)));
alpha2 =  (log(e(5)) - log(e(4))) / (log(e(4)) - log(e(3)));

T = table([1:9]',p(1:9)',e(1:9)');
T.Properties.VariableNames = {'Iterations', 'Approximation', 'Error'};