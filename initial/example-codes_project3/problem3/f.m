function dxdt = f(t,x,mb,mp,ms)
% a new input variabel mb has been added. 
% include the BH gravity terms. see eq 38. 
  r = sqrt((x(1)-x(5))^2+(x(2)-x(6))^2);
  rp = sqrt(x(1)^2 + x(2)^2);
  rs = sqrt(x(5)^2 + x(6)^2);
  dxdt(1) = x(3);
  dxdt(2) = x(4);
  dxdt(3) = (ms*(x(5)-x(1))/r^3)+mb*(-x(1)/rp^3);
  dxdt(4) = (ms*(x(6)-x(2))/r^3)+mb*(-x(2)/rp^3);
  dxdt(5) = x(7);
  dxdt(6) = x(8);
  dxdt(7) = (mp*(x(1)-x(5))/r^3)+mb*(-x(5)/rs^3);
  dxdt(8) = (mp*(x(2)-x(6))/r^3)+mb*(-x(6)/rs^3);
