function s = cubicInterp(x,y,z)
% x,y are arrays containing the data to interpolate
% z is a scalar or an array containing values where we would like to evaluate the interpolant
% output s is the value(s) of the interpolant evaluated at z

%convert x,y,z to column vectors
x = x(:); y = y(:); z = z(:);

%we developed cubic spline interpolation with x being length n+1
n = length(x)-1;

%preallocate space for all arrays
h = zeros(n,1);
A = zeros(n+1,n+1);
RHS = zeros(n+1,1);
b = zeros(n,1);
d = zeros(n,1);

%fill in the h array
for i = 1:n
    h(i) = x(i+1) - x(i);
end

%set A(1,1) and A(n+1,n+1)
A(1,1) = 1;
A(n+1,n+1)=1;

%fill in the A matrix and the RHS vector (can use one for loop i=2:n)
for i=2:n
    A(i,i-1) = h(i-1);
    A(i,i) = 2*(h(i-1) + h(i));
    A(i,i+1) = h(i);
    b(i) = (3/h(i)) * (y(i+1)-y(i)) - (3/h(i-1)) * (y(i)-y(i-1));
end
b(n+1) =0;

%solve the linear system for the c coefficients
c = A\b;


%use the c coefficients to solve for the b and d coefficients
for i = 1:n
    b(i) = ((y(i+1) - y(i))/h(i)) - (h(i)/3)*(2*c(i) + c(i+1));
    d(i) = (c(i+1)-c(i))/(3*h(i));
end

%now that we have all the coefficients for all the splines, we can choose and evaluate the right spline
%loop over all values in the z array
for k = 1:length(z)
    %for each point in z, decide which spline to evaluate.  If we store the result in i, this means to use spline i. 
    %Use the built-in "discretize" command to do this.  You may want to play around with this command in Matlab first.
    i = discretize(z(k),x);
    %use the right coefficients to evaluate the correct spline for each z value. 
    % Be careful to distinguish between i and k.
    s(k) = y(i) + b(i)*(z(k)-x(i)) + c(i)*(z(k)-x(i))^2 + d(i)*(z(k)-x(i))^3;
end