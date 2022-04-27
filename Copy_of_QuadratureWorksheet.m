format shortE;
close all

%% Define the problem to be analyzed
f = @(x) exp(sin(x))   %integrand
a = 0; b = 2*pi();             %domain of integration
n = [2,4,8,16,32]';   %number of intervals
h = (b-a) ./ n;           %spacing 
exact = integral(f,a,b);   %exact answer (for error analysis)

%% Get trapezoid and simpson approximations

% If you have working code, use it!
t = zeros(length(n),1);
s = zeros(length(n),1);
for i = 1:length(n)
    t(i) = myTrap(f,a,b,n(i));
    s(i) = mySimp(f,a,b,n(i));
end

% If you do not have working code, here is some data for this problem:
% This data is for the integral in problem 1:
% t = [0.154260788728124
%    0.153634808219685
%    0.153478497123341
%    0.153439430807689
%    0.153429664944255];
% s = [0.153422160114272
%    0.153426148050205
%    0.153426393424559
%    0.153426408702472
%    0.153426409656444];

% Data for sqrt(x) over [0,1]: 
% MODIFY THE PROBLEM INFORMATION ABOVE
% t = [0.660509341706817
%    0.664446591426642
%    0.665870965673531
%    0.666382647238971
%    0.666565576462991];
% s = [0.664099589757421
%    0.665759007999917
%    0.666345757089161
%    0.666553207760784
%    0.666626552870998];

% Data for exp(sin(x)) over [0,2pi]
% MODIFY THE PROBLEM INFORMATION ABOVE
% n = [2,4,8,16,32]; % MODIFY n ABOVE
% t = [6.283185307179586
%    7.989323439822037
%    7.954927772701778
%    7.954926521012848
%    7.954926521012844];

% Data for exp(sin(x)) over [0,1]
% MODIFY THE PROBLEM INFORMATION ABOVE
% n = [2,4,8,16,32]; % MODIFY n ABOVE
% t = [1.637517354400005
%    1.633211540574967
%    1.632200909122882
%    1.631952175062523
%    1.631890233965129];

%% You do not need to change anything below this line

% Compute the errors in the approximations
trap_error = abs(t - exact);
simp_error = abs(s - exact);

% Compute the ratio of the errors to h^p
trap_M = trap_error ./ (h.^2);
simp_M = simp_error ./ (h.^4);

% Get a table of errors and ratios
table(n, trap_error, trap_M, simp_error, simp_M)

% Look at convergence
figure(1)
M = 15; % Marker Size
F = 16; % Font size
% plot the convergence (error vs n)
loglog(n,trap_error,'bs','MarkerSize',M,'DisplayName','Trapezoid Error')
hold on  % must occur after first loglog plot
loglog(n,simp_error,'r^','MarkerSize',M,'DisplayName','Simpson Error')
% expected convergence lines (expected error vs n)
line2 = ((b-a)./n).^2   *n(1)^2/(b-a)^2*trap_error(1); % adjusted to start in same place
line4 = ((b-a)./n).^4   *n(1)^4/(b-a)^4*simp_error(1); % adjusted to start in same place
loglog(n,line2,'b-.','DisplayName','C((b-a)/n)^{2}')
loglog(n,line4,'r-.','DisplayName','C((b-a)/n)^{4}')
xlabel('n','FontSize', F)
legend('FontSize', 11,'Location','Best')
xticks(n)