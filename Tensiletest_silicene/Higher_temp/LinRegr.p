#gnuplot script that fits linear data
set key autotitle columnheader
set key top left
set title "Linear regression to determine Young's modulus for silicene at 500 K"
set xlabel "Strain"
set ylabel "Stress [GPa]"

f(x)=a*x+b
fit f(x) "LinPart.txt" u 2:3 via a,b
title_f(a,b) = sprintf('f(x) = %.2fx + %.2f', a, b)
plot "LinPart.txt" u 2:3, f(x) t title_f(a,b)
