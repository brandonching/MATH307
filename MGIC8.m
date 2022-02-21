%% MGIC8: .m-file Functions

%% Grade 2 GPA

function gpa = grade2gpa(mygrade)

if mygrade >= 91.5      % A
    gpa = 4.0;
elseif mygrade >= 89.5  % A-
    gpa = 3.7;
elseif mygrade >= 87.5  % B+
    gpa = 3.3;
elseif mygrade >= 81.5  % B
    gpa = 3.0;
elseif mygrade >= 79.5  % B-
    gpa = 2.7;
elseif mygrade >= 77.5  % C+
    gpa = 2.3;
elseif mygrade >= 71.5  % C
    gpa = 2.0;
elseif mygrade >= 69.5  % C-
    gpa = 1.7;
elseif mygrade >= 67.5  % D+
    gpa = 1.3;
elseif mygrade >= 61.5  % D
    gpa = 1.0;
elseif mygrade >= 59.5  % D-
    gpa = 0.7;
else                    % F
    gpa = 0;
end
%% Remember this?

x = [4 -3 8 5 -12 6 0 1];

%write one command that will assign the max to M and the index (location) of the max to I
[M, I] = max(x)
%% Quadratic formula - Functions with multiple outputs

function [r1,r2] = quadForm(a,b,c)
% Compute the roots of the quadratic equation a*x^2 + b*x + c
% Inputs: a,b,c: coefficients of quadtratic as described above
% Outuputs: r1, r2: x-values where ax^2+bx+c = 0 where r1>r2
r = roots([a,b,c]);
r1 = max(r);
r2 = min(r);

end
%% Projectile motion with subfunctions

function dist = projectile(v0, theta, h0)
% Find the distance a projectile travels using standard kinematics (no drag)
% input v0 = initial velocity in magnitude
% input theta = angle of launch
% input h0 = initial height of launch
% output dist = horizontal distance of projectile (assuming flat ground)
[r1,r2] = quadForm(-4.905, v0 * sin(theta), h0)
dist = v0 * cos(theta) * r1
end

% Include the subfunction quadForm
function [r1,r2] = quadForm(a,b,c)
r = roots([a,b,c]);
r1 = max(r);
r2 = min(r);
end
