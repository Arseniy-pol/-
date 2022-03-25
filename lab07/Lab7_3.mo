model Lab7_3
  // time [0:0.0001:0.02]
  parameter Integer x0 = 8; // Начальное число знающих о товаре
  parameter Integer N = 1030; // максимальное число людей, которых может заинтересовать товар
  Real x(start=x0);
equation
  der(x) = (0.94*sin(time) + 0.94*sin(time)*x)*(N-x);

end Lab7_3;
