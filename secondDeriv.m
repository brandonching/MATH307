function d2f = secondDeriv(y,h)
% Use O(h^2) approximations to compute second derivative
% y = evenly spaced outputs
% h = spacing between data inputs i.e. Delta x
% d2f = second derivative of y with respect to x

d2f(1)= (2*y(1) - 5*y(2) + 4*y(3) - y(4)) / (h^2);
for i = 2:length(y)-1
    cent_diff = (y(i+1) - 2*y(i) +y(i-1)) / (h^2);
    d2f = [d2f cent_diff];
end
end_diff = (2*y(length(y)) - 5*y(length(y)-1) + 4*y(length(y)-2) - y(length(y)-3)) / (h^2);
d2f = [d2f end_diff];
