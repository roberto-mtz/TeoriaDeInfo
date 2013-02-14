set grid layerdefault
set term png
set title 'Probability success 0'
set ylabel 'Frequency'
set xlabel 'Word size, power of two'
set label ""
set output "grafica_3.png"
set key off
plot "datos.dat" using 1:5:4 with points palette pt 13 ps 3