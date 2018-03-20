function [ ] = Sobel(Imagen,numerofig)
    
    MascaraSobel1 = [-1 -2 -1;0 0 0; 1 2 1];
    MascaraSobel2 = [-1 0 1;-2 0 2;-1 0 1];
    
    BordesSobel1 = abs(imfilter(Imagen,MascaraSobel1));
    BordesSobel2 = abs(imfilter(Imagen,MascaraSobel2));
    
    Sobel = max(BordesSobel1,BordesSobel2);
    
    figure(numerofig)
    subplot(1,2,1)
    imshow(BordesSobel1),title('Sobel 1')
    subplot(1,2,2)
    imshow(BordesSobel2),title('Sobel 2')
    
    Imagen = uint8(Imagen);
    figure(numerofig+1)
    subplot(1,2,1)
    imshow(Imagen),title('Original')
    subplot(1,2,2)
    imshow(Sobel),title('Sobel')

end

