clc; clear;
fprintf('Determinar los valores del sistema utilizando Gauss Simple');
EC= input('Dame el numero de variables dentro del sistema \n será el número de ecuaciones a resolver: ');

A=[]

for i= 1:EC
    fprintf('Ingresa los valores de la ecuacion %i: ',i)
    AEC= input('');
    A=[A;AEC]
end
B= input('Ingresa el vector de resultados');


A=[A(1,1:3) B(1,1);A(2,1:3) B(2,1);A(3,1:3) B(3,1)]


for ecuaciones 1:EC
    MULT1= A(ecuaciones,ecuaciones)
   for ecuacionmasuno 2:EC
       MULTI2 = A
   end
end