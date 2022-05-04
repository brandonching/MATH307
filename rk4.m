function [t,w] = rk4(f,range,iv,h)
%input f is the RHS of the ODE
%input range is a vector [initial time, final time]
%input iv is an initial y-value
%input h is a step size
%output t is an array containing the times that correspond to the approximations in y
%output w is an array containing approximations to the solution of the IVP

%set up the time vector
t = (range(1):h:range(2))';

%preallocate for w array using the length of t.  Be sure to define w as a column vector.
w = zeros(length(t),1);
w(1) = iv;

% Fill in the w-vector with Runge-Kutta-4 method.
% Hint: copy-paste your own Euler's/RK-mid code and modify it.
for i = 1:length(t)-1
    k1 = h*f(t(i),w(i));
    k2 = h*f(t(i) + h/2,w(i) + k1/2);
    k3 = h*f(t(i)+h/2,w(i)+k2/2);
    k4 = h*f(t(i)+h,w(i)+k3);
    w(i+1) = w(i) + (1/6)*(k1 + 2*k2 + 2*k3 + k4);
end