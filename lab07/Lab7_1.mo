model Lab7_1
  // time [0:0.01:10]
  parameter Integer x0 = 8; // Начальное число знающих о товаре
  parameter Integer N = 1030; // максимальное число людей, которых может заинтересовать товар
  Real x(start=x0);
equation
  der(x) = (0.83 + 0.000083*x)*(N-x);

end Lab7_1;
