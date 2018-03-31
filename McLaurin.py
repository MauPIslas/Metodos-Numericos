from sympy import *
from mpmath import *
import pandas as pd

print("\n Primer metodo, Serie de McLaurin\n\n")
#Asignamos un valor simbólico a x para poder ingresar funciones
x = Symbol("x")
fx= input("Dame la funcion: ")
cifSig = input("Dame el numero de cifras significativas: ")
valx= input("Dame el valor de x: ")
#convertimos el valor de x sstring a un valor numérico
valx= float(valx)
#sacamos el error significativo
errorSig= .5*10**(2-int(cifSig))
print("\n\nEl error significativo es de: "+ str(errorSig))
#La serie de McLaurin se caracteriza por tener el valor de la primera iteración igual a 1
serie = 1
#Creamos una lista donde anexaremos los valores de las aporximaciones para despues tabularlos
listaAporx=[]
listaAporx.append(serie)
#inicializamos el error aporximado con un valor mayor al error significativo para el funcionamiento del control de flujo while
errorAprox= 100
#Creamos una lista donde anexaremos los valores de los errores aproximados para despues tabularlos
listaErrores=[]
listaErrores.append(errorAprox)
#iniciamos i en 1 para correr la iteracion
i=1
#nuestro flujo se detendra cuando nuestro error aproximado sea menor a nuestro error significativo
while errorAprox > errorSig:
    """en ciertos casos, nuestro ciclo while podría tender al infinito, 
       es por eso que ponemos un tope de 20 iteraciones"""
    if i == 20:
        break
    #iteramos para sacar los valores de la sumatoria
    valorit= (valx)**(i)/fac(i)
    aproxAnt = serie
    aproxActual = serie + valorit
    errorAprox = abs((aproxActual - aproxAnt)/aproxActual) *100
    listaErrores.append(errorAprox)
    serie = aproxActual
    listaAporx.append(serie)
    #incrementamos i en uno para la siguiente iteracion
    i += 1

#Obtenenmos el valor verdadero
x= valx
valT= eval(fx)
print ("El valor verdadero es: " + str(valT)+ "\n")

"""generamos la tabla con la informacion en dorma de diccionario, donde la key será el nombre de la columna
   y el value son las listas con los valores recopilados en la iteracion"""

tabla = pd.DataFrame(data={'aproximacion': listaAporx, 'error': listaErrores})
print(tabla)