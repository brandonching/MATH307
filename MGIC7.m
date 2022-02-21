%% MGIC7: Anonymous functions (scalars only)

%% Math 307 grade calculator

% Write anonymous function here
math307grade = @(p,i,m,w,e1,e2) (p*0.05)+(i*0.05)+(m*0.15)+(w*0.25)+(e1*0.25)+(e2*0.25)

% student1 grades:
p = 95;    % pre-class quizzes
i = 100;   % in-class assignments
m = 85;    % Matlab grader HW
w = 80;    % written HW
e1 = 75;   % midterm exam 1
e2 = 85;   % midterm exam 2
student1 = math307grade(p,i,m,w,e1,e2)

% student2 grades:
p = 55;    % pre-class quizzes
i = 65;    % in-class assignments
m = 75;    % Matlab grader HW
w = 70;    % written HW
e1 = 70;   % midterm exam 1
e2 = 90;   % midterm exam 2
student2 = math307grade(p,i,m,w,e1,e2)
%% Calling anonymous functions

% Define anonymous functions for the hyperboloid of one sheet
hyp1 = @(a,b,c,x,y)  sqrt(c^2*(x.^2/a^2 + y.^2/b^2 -1));
hyp2 = @(a,b,c,x,y) -hyp1(a,b,c,x,y);

% Use the functions to create zpos and zneg
zpos = hyp1(1,2,5,-1,6)
zneg = hyp2(1,2,5,-1,6)
%% Calling anonymous functions with parameters

% Define anonymous functions for the hyperboloid of one sheet
a=1;
b=2;
c=5;
hyp1 = @(x,y)  sqrt(c^2*(x.^2/a^2 + y.^2/b^2 -1));
hyp2 = @(x,y) -hyp1(x,y);

% Use the functions to create zpos and zneg
zpos = hyp1(-1,6)
zneg = hyp2(-1,6)