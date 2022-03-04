model lab4_03
parameter Real w = sqrt(3.3);
parameter Real g = 3; 
parameter Real x0 = 0;
parameter Real y0 = -1.4;
Real x(start=x0);
Real y(start=y0);
equation
der(x) = y; 
der(y) = -w*w*x - g*y + 0.2*sin(3.5*time);
end lab4_03;
