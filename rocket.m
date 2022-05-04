function dy = rocket(t,w)
C_d =0.75;
rho = 1.225;
A=pi()*0.0208^2;

dy = zeros(3,1);

if (t<=0.26)
   F_prop = 60*t;
   dy(3) = -0.01515;
elseif (t<=1.65)
   F_prop = 15;
   dy(3) = -0.01515;
else
   F_prop = 0;
   dy(3) = 0;
end


dy(1) = w(1);
dy(2) = F_prop/w(3) - 9.81 - (0.5*C_d*rho*A*w(2)^2*sign(w(2)))/w(3);

end