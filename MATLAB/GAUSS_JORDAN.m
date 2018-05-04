clc; clear;
fprintf('Determinar los valores del sistema 3x3 utilizando Gauss- Jordan\n');
A1= input('Ingresa los valores de la primera ecuacion: ');
A2= input('Ingresa los valores de la segunda ecuacion: ');
A3= input('Ingresa los valores de la tercera ecuacion: ');
B= input('Ingresa el vector de resultados');

A=[A1 B(1,1);A2 B(2,1);A3 B(3,1)]


% % restar 1-2 y 1-3----------------------------------------------
MULT1 = A(1,1)
MULT2 = A(2,1)
MULT3 = A(3,1)

if sign(MULT1) ~= sign(MULT2)
        MULT1 = MULT1 * -1
end
if sign(MULT1) ~= sign(MULT3)
        MULT1 = MULT1 * -1
end

A1 = MULT2 * A(1, 1:4)
A2 = MULT1 * A(2, 1:4)

if sign(A1(1)) ~= sign(A2(1))
    Ax = A1 + A2
else
    Ax = A1 - A2
end

A1 = MULT3 * A(1, 1:4)
A3 = MULT1 * A(3, 1:4)


if sign(A1(1)) ~= sign(A3(1))
    Ay= A1 + A3
else
    Ay= A1 - A3
end

% % generar la nueva matriz-------------------------------------------
A= [A(1,1:4); Ax; Ay]



% % Restar 2 y 3----------------------------------------------
MULT2 = A(2,2)
MULT3 = A(3,2)


A2= MULT3 * A(2, 1:4)
A3= MULT2 * A(3, 1:4)

if sign(A2(2)) ~= sign(A3(2))
   Ay = A2 + A3
else
    Ay= A2 - A3
end
% % generar la nueva matriz-------------------------------------------
A= [A(1,1:4); A(2,1:4); Ay]



% % Restar 3-1 y 3-2----------------------------------------------
MULT1 = A(1,3)
MULT2 = A(2,3)
MULT3 = A(3,3)



A1= MULT3 * A(1, 1:4)
A3= MULT1 * A(3, 1:4)
if sign(A1(3)) ~= sign(A3(3))
   Ax = A1 + A3
else
    Ax= A1 - A3
end

A2= MULT3 * A(2, 1:4)
A3= MULT2 * A(3, 1:4)

if sign(A2(3)) ~= sign(A3(3))
   Ay = A2 + A3
else
    Ay= A2 - A3
end
% % generar la nueva matriz-------------------------------------------
A=[Ax;Ay;A(3, 1:4)]

% % restar 2-1--------------------------------------------------------

MULT1 = A(1,2)
MULT2 = A(2,2)

A1 = MULT2 * A(1,1:4)
A2 = MULT1 * A(2,1:4)

if sign(A1(2)) ~= sign(A2(2))
   Ax = A1 + A2
else
    Ax= A1 - A2
end
% % generar la nueva matriz-------------------------------------------
A=[Ax;A(2, 1:4);A(3, 1:4)]

% % %  obtener los unos---------------------------------------------------
A1 = A(1, 1:4) / A(1,1)
A2 = A(2, 1:4) / A(2,2)
A3 = A(3, 1:4) / A(3,3)

clc;
fprintf("\n Tus raices son las siguientes: ")
X1= A1(1,4)
X2 = A2(1,4)
X3 = A3(1,4)

fprintf("\n Método desarrollado por Mauricio Adrián Piñón Islas \n \n")
