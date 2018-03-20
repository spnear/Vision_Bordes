clear all
close all
clc
Imagen = double(imread('test.tif'));
Imagen = 255-Imagen;
disp('Mostrando Deteccion de bordes por Robert, presione ENTER para continuar a Preuntt')
numfig = 1;
Roberts(Imagen,numfig)
pause;
close all
clc
%numfig = numfig + 3;
disp('Mostrando Deteccion de bordes por Preuntt, presione ENTER para continuar a Sobel')
Preuntt(Imagen,numfig)
pause;
close all
clc
%numfig = numfig + 3;
disp('Mostrando Detección de bordes por Sobel, presione ENTER para continuar a Kirsch')
Sobel(Imagen,numfig)
pause;
close all
clc
disp('Mostrando Detección de bordes por Kirsch, presione ENTER para finalizar programa')
Kirsch(Imagen,numfig)
pause;
close all
clc