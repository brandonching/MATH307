function [t,w] = myRKF(f,range,iv,tol)
%Runge-Kutta-Fehlberg adaptive method
%input f is an anonymous function defining the differtial equation
%input range is a vector of length 2 containing the initial and final times
%input iv is a scalar containing the initial condition
%input tol is a scalar tolerance
%output t is an array containing the times at which we have approximations
%output w is an array containing the approximate solutions

%start counter, start time and solution arrays
i = 1;
t(1) = range(1);
w(1) = iv;    

%set max and min h values and starting step size h
hmax = 0.5;
hmin = 0.001;
h = hmax;

%run loop until t(i) = range(2), the final time
while t(i) ~= range(2)
    %the 4th and 5th order approximations
    k1 = h*f(t(i),w(i));
    k2 = h*f(t(i)+h/4, w(i) + k1/4);
    k3 = h*f(t(i)+3*h/8,w(i)+3*k1/32+9*k2/32);
    k4 = h*f(t(i)+12*h/13,w(i)+1932*k1/2197-7200*k2/2197+7296*k3/2197);
    k5 = h*f(t(i)+h,w(i)+439*k1/216-8*k2+3680*k3/513-845*k4/4104);
    k6 = h*f(t(i)+h/2,w(i)-8*k1/27+2*k2-3544*k3/2565+1859*k4/4104-11*k5/40);
    % Update steps for the approximations
    w4 = w(i) + 25*k1/216+1408*k3/2565+2197*k4/4104-k5/5;
    w5 = w(i) + 16*k1/135+6656*k3/12825+28561*k4/56430-9*k5/50+2*k6/55;
    %Define R = the approximation to the relative one-step error of the approximations
    R = (1/h) * abs(w4-w5);
    
    %If we decide to keep the approximation, update t, w, and move on
    if R < tol  % fill in the condition
        t(i+1) = t(i) + h;
        w(i+1) = w5;   % use the higher-order approximation 
        i = i + 1;
    end 

    %compute q factor to change step size.  Use the efficiency factor discussed in class.
    q = (tol/(2*R))^(1/4);
    
    %change step size using q
    %if algorithm wants to change h by too much, we slow it down, otherwise change it by factor q
    if q <= 0.1      % reduces h too much
        h = 0.1 * h;          % change h only by factor of 0.1
    elseif q >= 4    % increases h too much
        h = 4 * h;          % change h only by factor of 4
    else             % q is just right!
        h = q * h;         % change h by factor of q
    end
    
    %if new step size h is too large, set it to hmax
    if h > hmax
        h = hmax;
    end
    %if new step size h is too small, print error message and quit
    if h < hmin
        disp('min h exceeded');
        break
    end
    
    %if step size will cause us to overshoot final time, fix h to land right on final time
    if t(i)+h > range(2)
        h = range(2) - t(i);
    end
end

%force t and w to be column vectors
t = t(:);w = w(:);

