model lab4_01
parameter Real w = sqrt(7.4);
parameter Real g = 0; 
parameter Real x0 = 0;
parameter Real y0 = -1.4;
Real x(start=x0);
Real y(start=y0);
equation
der(x) = y; 
der(y) = -w*w*x - g*y;
end lab4_01;
