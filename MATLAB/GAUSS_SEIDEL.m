clc; clear;
fprintf('Determinar los valores del sistema 3x3 utilizando Gauss- SEIDEL\n');
A1= input('Ingresa los valores de la primera ecuacion: ');
A2= input('Ingresa los valores de la segunda ecuacion: ');
A3= input('Ingresa los valores de la tercera ecuacion: ');
B= input('Ingresa el vector de resultados');

A=[A1 ;A2 ;A3]

X2=0
X3=0
EA1=100
EA2=100
EA3=100

X1=0
X2=0
X3=0

it = 0
while (EA1>0.5 & EA2>0.5& EA3>0.5)
    it = it +1
    if it== 15
        fprintf('\nEl método no está convergiendo hacia el resultado \n En seguida se mostrara los datos obtenidos \n\n\n\n\n\n\n\n\n\n\n\n\n\n');
        pause(10);
        break
    end
    X1PASS= X1
    X2PASS=X2
    X3PASS=X3

    X1= (B(1)-A(1,2)*X2-A(1,3)*X3)/A(1,1)
    X2= (B(2)-A(2,1)*X1-A(2,3)*X3)/A(2,2)
    X3= (B(3)-A(3,1)*X1-A(3,2)*X3)/A(3,3)
    
    EA1= abs((X1-X1PASS)/X1) *100
    EA2= abs((X2-X2PASS)/X2) *100
    EA3= abs((X3-X3PASS)/X3) *100
    
end
clc;

fprintf("\n Tus raices son las siguientes: \n")
display(X1);
display(X2);
display(X3);
fprintf("\n Los errores son los siguientes: \n")
display(EA1);
display(EA2);
display(EA3);

fprintf("\n Método desarrollado por Mauricio Adrián Piñón Islas \n \n")
