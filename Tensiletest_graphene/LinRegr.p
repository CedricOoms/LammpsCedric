#gnuplot script that fits linear data
set key autotitle columnheader
set key top left
set title "Linear regression to determine Young's modulus for graphene"
set xlabel "Strain"
set ylabel "Stress [GPa]"
set xrange [0.43:0.75]
#set yrange [-10:180]

f(x)=a*x+b
fit f(x) "Data_LinearPart.txt" u 2:3 via a,b
title_f(a,b) = sprintf('f(x) = %.2fx + %.2f', a, b)
plot "Data_LinearPart.txt" u 2:3, f(x) t title_f(a,b)
