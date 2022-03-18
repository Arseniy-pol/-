model lab06
  parameter Real a = 0.01;
  parameter Real b = 0.02;
  parameter Integer N = 12300;
  parameter Integer I0 = 140;
  parameter Integer R0 = 54;
  parameter Integer S0 = N - I0 - R0;
  Real S(start = S0);
  Real I(start = I0);
  Real R(start = R0);
  
equation
  der(S) = 0;
  der(I) = -b * I;
  der(R) = b * I;

end lab06;
