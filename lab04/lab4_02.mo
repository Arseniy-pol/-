model lab4_02
parameter Real w = sqrt(0.1);
parameter Real g = 10.1; 
parameter Real x0 = 0;
parameter Real y0 = -1.4;
Real x(start=x0);
Real y(start=y0);
equation
der(x) = y; 
der(y) = -w*w*x - g*y;
end lab4_02;
