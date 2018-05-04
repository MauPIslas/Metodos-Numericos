from sympy import *
from mpmath import *
# import pandas as pd

def derivative(function):
    #Asignamos un valor simbólico a x para poder derivar las funciones
    x = Symbol("x")
    return Derivative(function,x).doit()

print("\n Segundo metodo, Serie de Taylor\n\n")

fx= input("Dame la funcion: ")
xi= float(input("Dame el valor de xi: "))
xi1= float(input("Dame el valor de xi+1: "))
itMax= int(input("Dame el numero de iteraciones máximas: "))
h = xi1 - xi
listaAprox= []
listaErrorRel=[]
x=xi1
valT= eval(fx) 
print ("Valor verdadero:" +str(valT))
x=xi
aproxCero= eval(fx)
print ("aproxCero:" +str(aproxCero))
listaAprox.append(aproxCero)
serie = aproxCero

for i in range(itMax):
    # print("iteracion numero:" +str(i))
    aproxAnt = serie
    fx= derivative(fx)
    if fx == 0:
        break
    fxi = (eval(str(fx)))*((h**(i+1))/fac(i+1))
    serie = serie + fxi
    # errRel= 
