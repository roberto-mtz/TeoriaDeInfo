set grid layerdefault
set term png
set title 'Word size vs Success Transmit'
set ylabel 'Frequency'
set xlabel 'Word size, power of two'
set label ""
set output "grafica_2.png"
set key off
plot "datos.dat" using 1:2:4 with points palette pt 7 ps 3