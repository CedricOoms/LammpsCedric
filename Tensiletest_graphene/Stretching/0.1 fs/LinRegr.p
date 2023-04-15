#gnuplot script that fits linear data
set key autotitle columnheader
set key top left
set title "Linear regression to determine Young's modulus for graphene"
set xlabel "Strain"
set ylabel "Stress [GPa]"
set xrange [0.44:0.57]
#set yrange [-10:180]

f(x)=a*x+b
fit f(x) "LinPart2.txt" u 2:3 via a,b
title_f(a,b) = sprintf('f(x) = %.2fx + %.2f', a, b)
plot "LinPart2.txt" u 2:3, f(x) t title_f(a,b)
