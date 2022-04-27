<<<<<<< HEAD
function df = firstDeriv(y,h)
% Use O(h^2) approximations to compute derivative
% y = evenly spaced data of outputs
% h = spacing between the inputs of the data points (delta x)
% df = derivative of y with respect to x

df(1)= (-3*(y(1)) + 4*y(2) - y(3)) / (2 * h);
for i = 2:length(y)-1
    cent_diff = (y(i+1)-y(i-1)) / (2*h);
    df = [df cent_diff];
end
end_diff = (-3*(y(length(y))) + 4*y(length(y)-1) - y(length(y)-2)) / (2 * (-h));
=======
function df = firstDeriv(y,h)
% Use O(h^2) approximations to compute derivative
% y = evenly spaced data of outputs
% h = spacing between the inputs of the data points (delta x)
% df = derivative of y with respect to x

df(1)= (-3*(y(1)) + 4*y(2) - y(3)) / (2 * h);
for i = 2:length(y)-1
    cent_diff = (y(i+1)-y(i-1)) / (2*h);
    df = [df cent_diff];
end
end_diff = (-3*(y(length(y))) + 4*y(length(y)-1) - y(length(y)-2)) / (2 * (-h));
>>>>>>> 3af70cf0a9033dd53b8859aad17fa96f8d5b8bc5
df = [df end_diff];