%% MGIC2: Vectors and matrices

%% Creating vectors entry-wise and initializing vectors

% Create a row vector with 4 entries: 1, 5, 9, -10.  Call it r.
r =[1 5 9 -10]

% Create a column-vector version of r.  Call it c.
c = r'

% Use the zeros command to initialize a 1x50 vector to be filled in later.  Call it x.
x = zeros(1,50)
%% Creating evenly spaced vectors

% Create an evenly spaced vector from -1 to 1 with 20 entries.  Call it x. 
x = linspace(-1,1,20) 

% Create an evenly spaced vector from 1 to 100 with spacing 1.  Call it y
y=1:1:100

% Create an evenly spaced vector from -1 to 1 with spacing 0.1.  Call is z.
z=-1:0.1:1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reflect: How many entries are in z? Does x = z? %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Access the access the 5th entry of x, save it as x5.
x5 = x(5)

% Access the access the 20th entry of y, save it as y20.
y20 = y(20)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reflect: Can you access the 50th entry of z? %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Make a matrix

% Define the matrix A.
A = [4 7 1 0;-2 3 0 9;8 -5 7 -2]

% Store the entry in row 1 column 3 as a13
a13 = A(1,3)


% Store the entry in row 3 column 1 as a31
a31=A(3,1)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tip: You can use one index to access entries in an array.    %
%      However, we recommend using two for matrices and one    %
%      for vectors.  E.g. x(5) is the 4th entry of a vector x. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Accessing entries

A = [1,2,3,4;
     2,4,6,8;
     3,6,9,12;
     4,8,12,16];
x = [10,9,8,7];

% Access the position in row 3 column 2 of matrix A.  Store the result as a32.
a32 = A(3,2)
% Access the 3rd entry of vector x.  Store the result as x3.
x3=x(3)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tip: It is much easier to use ONE dimension %
% for vector entries and TWO for matrices.    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Use built-in commands to determine vector size and lengths.

% Here are two vectors we'll work with on this problem:
x = [1,5,9,-1,-4,0,8,6,-5,3,2,0,-9,1];
y = [2;10;-3;1;0;2;-3;8;-6;7;4];

% Determine the size of x.  Store the number of rows as rx and the number of columns as cx.
[rx,cx] = size(x)

% Determine the size of y.  Store the number of rows as ry and the number of columns as cy.
[ry,cy] = size(y)

% Determine the length of x.  Store the length as n.
n = length(x)

% Determine the length of y.  Store the length as m.
m = length(y)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tip: when dealing with vectors, use length, not size. %
% Tip: Never name a .m-file as "length.m".              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%