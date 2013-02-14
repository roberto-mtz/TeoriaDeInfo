set grid layerdefault
set term png
set title 'Probability success 1'
set ylabel 'Frequency'
set xlabel 'Word size, power of two'
set label ""
set output "grafica_4.png"
set key off
plot "datos.dat" using 1:6:4 with points palette pt 11 ps 3