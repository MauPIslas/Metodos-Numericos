clc;clear;
fprintf('Determinar los valores de un sistema de ecuaciones \nutilizando la regla de Cramer \n');
A1= input('Ingresa los valores de la primera ecuacion');
A2= input('Ingresa los valores de la primera ecuacion');
A3= input('Ingresa los valores de la primera ecuacion');

A=[A1;A2;A3]

COL1=A(:, [1]);
COL2=A(:, [2]);
COL3=A(:, [3]);

B= input('Ingrese los valores del vector de resultados\n');
%Se obtiene la matriz transpuesta
B=transpose(B)

x1=[B,COL2,COL3]
x2=[COL1,B,COL3]
x3=[COL1,COL2,B]

DA= det(A)
X1= det(x1);
X2= det(x2);
X3= det(x3);
fprintf('Determinante del sistema; %f\n', DA);
x1=X1/DA;
x2=X2/DA;
x3=X3/DA;
fprintf('El valor de x1 es: %f\n', x1);
fprintf('El valor de x1 es: %f\n', x2);
fprintf('El valor de x1 es: %f\n', x3);