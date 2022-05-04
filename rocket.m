function dy = rocket(t,y)
C_d =0.75;
rho = 1.225;
A=pi()*0.0208^2;

dy = zeros(3,1);

if (t<=0.26)
   F_prop = 60*t;
elseif (t<=1.65)
   F_prop = 15;
else
   F_prop = 0;
end


dy(1) = y(1);
dy(2) = F_prop/y(3) - 9.81 - (0.5*C_d*rho*A*y(2)^2*sign(y(2)))/y(3);
if (t<=1.65)
   dy(3) = -0.01515;
else
   dy(3) = 0;
end

end