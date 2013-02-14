set grid layerdefault
set term png
set title 'Word with Success Transmit'
set xlabel 'Power of 2'
set ylabel 'Probability of success to Transmit'
set label ""
set arrow from 0,0 to 6,0
set output "grafica_1.png"
set key off
plot "datos.dat" using 1:2:3 with yerrorbars pt 7 ps 3