%% MGIC10: built-ins

%% Built in root finding for polynomials

% Find the roots of the polynomial f(x) = x^5 + 2x^4 -x-2.
% Store the result in the vector x.
x = roots([1, 2, 0, 0, -1, -2])

% Find the roots of the polynomial f(y) = (y-1)^2.
% Store the result in the vector y.
y = roots([1,-2,1])
%% Built in root finding for general functions

% Use fzero to find the (only) root of the function f(x) = x-0.7sin(x) - 3.  Store the result as x1
f1 = @(x) x-0.7*sin(x) - 3
x1 = fzero(f1,0)

% Use fzero to find a root of f(x) = tan(x) near x = 3.  Store the result as y1.
f2 = @(x) tan(x)
y1 = fzero(f2,3)

% Use fzero to find a root of f(x) = tan(x) near x = 1.  Store the result as y2.
f3 = @(x) tan(x)
y2 = fzero(f3,1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reflection: Explain what happend to y2. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Note: fzero uses a combination of bisection and secant methods. %
%       Why do you think it does this?                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%