%% MGIC3: For loops

%% Use a for loop to fill in an array

% initialize the array as zeros
x = zeros(1, 50);

% use a for loop to fill in the entries (that follow the pattern)
for i = 1:50
    x(i) = factorial(2*i) / (factorial(i) * factorial(i+1))
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reflect: When you finish, print the result of the x-array. %  
%          Explain why most of the entries look like 0.      %
% Tip: Do not print inside of a for loop!                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Use a for loop to fill in an array (follow the pattern!)

% initialize the array as zeros
x = zeros(1, 100);
x(1) = 0.5;
r=3.6;
% use a for loop to fill in the entries (that follow the pattern)
for i = 1:99
    x(i+1) = r*x(i)*(1-x(i))
end
%% Use a for loop to compute a sum I

% start by initializing basel
basel = 1
% now use a for loop to compute basel
for i = 2:100000
    basel = 1/i^2 + basel;
end

% finally, compute the exact error (since the exact answer is known-- thanks Euler!)
err = (pi^2/6) - basel