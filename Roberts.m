function [ ] = Roberts(Imagen,numerofig)

    Mascara_Robert_Vertical = [-1 1];
    Mascara_Robert_Horizontal = [-1;1];
    Mascara_RobertDiag1 = [-1 0;0 1];
    Mascara_RobertDiag2 = [0 -1;1 0];
    
    BordesVertical = abs(imfilter(Imagen,Mascara_Robert_Vertical));
    BordesHorizontal = abs(imfilter(Imagen,Mascara_Robert_Horizontal));
    BordesDiag1 = abs(imfilter(Imagen,Mascara_RobertDiag1));
    BordesDiag2 = abs(imfilter(Imagen,Mascara_RobertDiag2));
    
    Roberts = max(BordesVertical,max(BordesHorizontal,max(BordesDiag1,BordesDiag2)));
    Roberts = uint8(Roberts);
    
    
    figure(numerofig)
    subplot(1,2,1)
    imshow(uint8(BordesVertical)),title('Roberts BordesVertical')
    subplot(1,2,2)
    imshow(uint8(BordesHorizontal)),title('Roberts BordesHorizontal')
    
    figure(numerofig+1)
    subplot(1,2,1)
    imshow(uint8(BordesDiag1)),title('Roberts BordesDiag1')
    subplot(1,2,2)
    imshow(uint8(BordesDiag2)),title('Roberts BordesDiag2')
    
    figure(numerofig+2)
    Imagen = uint8(Imagen);
    subplot(1,2,1)
    imshow(Imagen),title('Original')
    subplot(1,2,2)
    imshow(Roberts),title('Roberts')
    
end

