#!/usr/bin/awk -f
{
    if($2 == tam && $3 == frec){
	suma+=$4
	conta+=1
    }
}
END{
    promedio = suma/conta
    print promedio
}
{
    if($2 == tam && $3 == frec){
	dato = $4
	x = promedio - dato
	suma_cuadrado+=x^2
    }

}END {
    varianza = suma_cuadrado/(conta-1)
    desviacion = sqrt(varianza)
    print desviacion
}