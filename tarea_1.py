import random
import numpy
import sys

def genera_bin(tam, prob):
    palabra = ""
    for i in xrange(tam):
        x = random.random()
        if (prob < x):
            palabra = palabra + str(0)
        else:
            palabra = palabra + str(1)
    return palabra

def transmite(palabra, Q):
    """ 
    simula su transmision por un canal cuyos probabilidades de tranicion estan dadas como parametro 2x2
    """
    palabra_trans = ''

    for i in xrange(len(palabra)):
        bit = palabra[i]
        x = random.random()

        if (x < Q[int(bit)]):
            palabra_trans = palabra_trans + str(bit)
        else:
            if bit == "0":
                palabra_trans = palabra_trans + str(1)
            else:
                palabra_trans = palabra_trans + str(0)
                
    return palabra_trans

def repeticiones(num, palabra, Q):
    mal = 0
    bien = 0
    for i in xrange(num):
        transmitida = transmite(palabra, Q)
        if transmitida != palabra:
            mal = mal + 1
        else:
            bien = bien + 1

    return (bien, mal)

def main():
    tam = int(sys.argv[1])
    frecuencia = float(sys.argv[2])
    Q0 = float(sys.argv[3])
    Q1 = float(sys.argv[4])
    rep = int(sys.argv[5])
    palabra = genera_bin(tam, frecuencia)
    Q = [Q0, Q1]
    (bien, mal) = repeticiones(rep, palabra, Q)
    print float(bien * 100)/float(rep)

main()
