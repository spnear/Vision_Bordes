function [ ] = Preuntt(Imagen,numerofig)

    MascaraPreuntt1 = [-1 -1 -1;0 0 0; 1 1 1];
    MascaraPreuntt2 = [-1 0 1;-1 0 1;-1 0 1];
    MascaraPreuntt3 = [-1 -1 0;-1 0 1;0 1 1];
    MascaraPreuntt4 = [0 -1 -1;1 0 -1;1 1 0];
    
    BordesPreuntt1 = abs(imfilter(Imagen,MascaraPreuntt1));
    BordesPreuntt2 = abs(imfilter(Imagen,MascaraPreuntt2));
    BordesPreunt3 = abs(imfilter(Imagen,MascaraPreuntt3));
    BordesPreuntt4 = abs(imfilter(Imagen,MascaraPreuntt4));
    
    Preuntt = max(BordesPreuntt1,max(BordesPreuntt2,max(BordesPreunt3,BordesPreuntt4)));
    Preuntt = uint8(Preuntt);
    
    
    figure(numerofig)
    subplot(1,2,1)
    imshow(uint8(BordesPreuntt1)),title('Preuntt1')
    subplot(1,2,2)
    imshow(uint8(BordesPreuntt2)),title('Preuntt2')
    figure(numerofig+1)
    subplot(1,2,1)
    imshow(uint8(BordesPreunt3)),title('Preuntt3')
    subplot(1,2,2)
    imshow(uint8(BordesPreuntt4)),title('Preuntt4')
    
    figure(numerofig+2)
    Imagen = uint8(Imagen);
    subplot(1,2,1)
    imshow(Imagen),title('Original')
    subplot(1,2,2)
    imshow(Preuntt),title('Preuntt')
    
end
