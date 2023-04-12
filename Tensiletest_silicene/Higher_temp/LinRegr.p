set key autotitle columnheader
set title "Silicene sheet at 500 K"       
set xlabel "Strain"
set ylabel "Stress [GPa]"
set xrange [0:0.15]

f(x)=a*x+b
fit f(x) "LinPart.txt" u 2:3 via a,b
title_f(a,b) = sprintf('f(x)=%.2fx + %.2f', a, b)
plot "LinPart.txt" u 2:3, f(x) t title_f(a,b)
