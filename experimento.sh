#!/bin/bash
tam=1
frec=0.5
rep=30
init=1
count=0
res=1
lim=100
pot=0
palabras=30
q0=0
q1=0

touch datos.dat
touch tmp.dat
rm datos.dat
rm tmp.dat


echo $tam
while [[ tam -le lim ]]
do
for frec in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9
    do
    for q0 in 0.1 0.5 0.9
        do
        for q1 in 0.1 0.5 0.9
            do
            touch tmp.dat
            rm tmp.dat
            touch tmp.dat
            conta=1
            while [[ conta -le palabras  ]]
                do
                    res=`python tarea_1.py $tam $frec $q0 $q1 $rep`
                    echo $conta $tam $frec $res $q0 $q1  >> tmp.dat
                    conta=$((1+$conta))
                done
                resu=`./experimento.awk -v tam=$tam -v frec=$frec tmp.dat`
                echo $pot $frec $resu $q0 $q1 >> datos.dat
                rm tmp.dat
            done
       done
        
    done
pot=$((1+$pot))
tam=$((2*$tam))
echo $tam
done
