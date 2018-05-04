clc; clear;
fprintf('Determinar los valores del sistema 3x3 utilizando Gauss- Jordan\n');
A1= input('Ingresa los valores de la primera ecuacion: ');
A2= input('Ingresa los valores de la segunda ecuacion: ');
A3= input('Ingresa los valores de la tercera ecuacion: ');
B= input('Ingresa el vector de resultados');
A=[A1 B(1,1);A2 B(2,1);A3 B(3,1)]

%PRIMER VALOR CON A(1,1)
%fprintf('%i X%i \n',A1(:,[j]),j);

% % PRIMERA ITERACION----------------------------------------------
MULT1 = A(1,1)
MULT2 = A(2,1)
MULT3 = A(3,1)

if sign(MULT1) == sign(MULT2)
        MULT1 = MULT1 * -1
end
if sign(MULT1) == sign(MULT3)
        MULT1 = MULT1 * -1
end

A1 = MULT2 * A(1, 1:4)
A2 = MULT1 * A(2, 1:4)
Ax = A1 + A2

A1 = MULT3 * A(1, 1:4)
A3 = MULT1 * A(3, 1:4)
Ay= A1 + A3

A= [A(1,1:4); Ax; Ay]


% % Restar 2 y 3----------------------------------------------
MULT2 = A(2,2)
MULT3 = A(3,2)

if sign(MULT2) == sign(MULT3)
        MULT2 = MULT2 * -1
end

A2= MULT3 * A(2, 1:4)
A3= MULT2 * A(3, 1:4)

Ay = A2-A3
A= [A(1,1:4); A(2,1:4); Ay]

% % Restar 3-1 y 3-2----------------------------------------------
MULT1 = A(1,3)
MULT2 = A(2,3)
MULT3 = A(3,3)


if sign(MULT3) == sign(MULT1)
        MULT3 = MULT3 * -1
end
if sign(MULT3) == sign(MULT2)
        MULT3 = MULT3 * -1
end

A1= MULT3 * A(1, 1:4)
A3=  A(3, 1:4)

Ax = A1-A3
A2= MULT3 * A(2, 1:4)

Ay= A2-A3

A=[Ax;Ay;A(3, 1:4)]
