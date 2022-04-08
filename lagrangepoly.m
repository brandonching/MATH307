function P = lagrangepoly(x,y,z)
% x,y = data (stored as vectors)
% z = evaluation point(s)
% P = the lagrange polynomial evaluated at all points in z

P = 0;
for j = 1:length(x)
    t=1;
    for i = 1:length(x)
        if i~=j
            t=t.*(z-x(i))/(x(j)-x(i));
        end
    end
    P = P + t*y(j)
end