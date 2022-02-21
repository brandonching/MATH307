%% MGHW3: Loops, Logic, Anonymous Functions

%% Projectile Motion (vectors, dot operator, plotting)

%Define theta and v0
theta = pi/6;
v_0 = 25;
%y(t) = at^2 + bt + c, the vertical position, is a quadratic function of time.
%Define the coefficients of the quadratic.
a = -9.81/2; 
b = v_0*sin(theta);
c = 10;

%Use a, b, and c from the quadratic equation to determine the two times when y(t) = 0.
%Note: You should type the quadratic formula directly into Matlab here, using the variables you already wrote.  
%      Do not solve the quadratic equation somewhere else and merely copy the results into Matlab.  
t1 = (-b + sqrt((b.^2)-(4*a*c)))/(2*a)
t2 = (-b - sqrt((b.^2)-(4*a*c)))/(2*a)

%the greater, positive root corresponds to the time when the cannonball hits the ground.
%Note: Again, use Matlab to do this.  Look up a command that will help you find the max of two variables.
tstar = max(t1, t2);

%Use the appropriate equation for x-position, evaluated at time when cannonball hits the ground
%to determine the horizontal position of the ball at impact.
distance = v_0*cos(theta)*tstar;

%Create a time vector, starting at zero, ending at the time the projectile hits the ground.
%Use 100 evely spaced points.
t = linspace(0,tstar,100);

%Create a vector for the height of the projectile using a, b, c, and t.  
y = a*t.^2+b.*t+c;  

%Create a vector for the horizontal distance of the projectile using your t vector.  
x = v_0*cos(theta)*t;

%Finally, plot x (abscissa) vs y (ordinate).
plot(x,y)
%% Use a for loop to fill in an array II

rng(307);  % so the random numbers are the same
x = randi(10,1,250);  % random integrs from 1 to 10, of size 1x250
y = zeros(1,250);
for i = 1:250
    if x(i) < 4
        y(i) = 0;
    elseif x(i) <=7
        y(i) = 2*x(i);
    else
        y(i) = 100;
    end
end
y
%% Use a for loop to compute a sum II

rng(307); % set the random number generator seed so everyone gets same answer
x = rand(1,1000)*2-1; % create vector of random #s
mysum = 0;
for i = 1:1000
    if x(i) <= 0.2
        mysum = mysum + 1;
    end
end
mysum

%% Temperature Counting

TNY =  [31, 26, 30, 33, 33, 39, 41, 41, 34, 33, 45, 42, 36, 39, 37, 45,...
        36, 45, 22, 28, 46, 48, 45, 40, 29, 26, 52, 46, 24, 36, 48, 32,...
           43, 36, 41, 37, 32, 32, 35, 42, 38, 33, 40, 37, 36, 51, 50];
TAN =  [37, 24, 28, 25, 21, 28, 46, 37, 36, 20, 24, 31, 34, 40, 43, 36,...
        47, 23, 42, 28, 34, 47, 44, 38, 23, 32, 37, 40, 22, 24, 49, 51,...
           34, 41, 42, 35, 38, 36, 35, 33, 42, 42, 37, 26, 20, 25, 31];
       
aboveNY = 0;
aboveAK =0;
AKhigher = 0;
for day = 1:length(TNY)
    if TNY(day) > mean(TNY)
        aboveNY = aboveNY + 1;
    end
    
    if TAN(day) > mean(TAN)
        aboveAK = aboveAK + 1;
    end
    
    if TAN(day) > TNY(day)
        AKhigher = AKhigher + 1;
    end
end  
%% While loop factorial test

x= 1234567891011121314151617181920212223242526272829e30;

n=0;
while ~(factorial(n) > x)
    n = n + 1;
end
n

%% Ricker

y=0.5
while 1
    y(end+1) = 5.6*y(end)*exp(-8*y(end))
    if abs(y(end)-y(end-1)) < 10^-6
        L=y(end)
        break
    end
end
%% Spacing for setting up optimal h

h = 1;

while h(end) > 10^-13
    h(end+1) = h(end)/2;
end
%% Wind chill as anonymous function

% Define an anonymous function named Twc:
Twc = @(T, V) 35.74 + 0.6215.*T - 35.75.*V.^0.16 + 0.4275.*T.*V.^0.16;
% This code provided will use your function to compute chill with T = 36, V = 21.
chill = Twc(36,21);
%% Altitude by boiling water

%write two anonymous functions
p = @(h) 29.921*(1-6.8753e-6.*h).^5.2559;
T = @(p) 49.161.*log(p)+44.932;
%create an array of evenly spaced altitudes
h = linspace(0,15000,1000);

%Use anonymous functions to get pressures for each altitude and temperatures for each pressure
pressures = p(h);
temps = T(pressures);

plot(temps,h)
