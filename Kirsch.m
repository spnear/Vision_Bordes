function [ ] = Kirsch(Imagen,numerofig)
    
    MascaraKirsch1 = [-3 -3 5;-3 0 5;-3 -3 5];
    MascaraKirsch2 = [-3 5 5;-3 0 5;-3 -3 -3];
    MascaraKirsch3 = [5 5 5;-3 0 -3;-3 -3 -3];
    MascaraKirsch4 = [5 5 -3;5 0 -3;-3 -3 -3];
    MascaraKirsch5 = [5 -3 -3;5 0 -3;5 -3 -3];
    MascaraKirsch6 = [-3 -3 -3;5 0 -3;5 5 -3];
    MascaraKirsch7 = [-3 -3 -3;-3 0 -3;5 5 5];
    MascaraKirsch8 = [-3 -3 -3;-3 0 5;-3 5 5];
    
    BordesKirsch1 = abs(imfilter(Imagen,MascaraKirsch1));
    BordesKirsch2 = abs(imfilter(Imagen,MascaraKirsch2));
    BordesKirsch3 = abs(imfilter(Imagen,MascaraKirsch3));
    BordesKirsch4 = abs(imfilter(Imagen,MascaraKirsch4));
    BordesKirsch5 = abs(imfilter(Imagen,MascaraKirsch5));
    BordesKirsch6 = abs(imfilter(Imagen,MascaraKirsch6));
    BordesKirsch7 = abs(imfilter(Imagen,MascaraKirsch7));
    BordesKirsch8 = abs(imfilter(Imagen,MascaraKirsch8));
    
    Kirsch = max(BordesKirsch1,max(BordesKirsch2,max(BordesKirsch3,max(BordesKirsch4,max(BordesKirsch5,...
        max(BordesKirsch6,max(BordesKirsch7,BordesKirsch8)))))));
    
    figure(numerofig)
    subplot(1,2,1)
    imshow(BordesKirsch1),title('BordesKirsch K0 0°')
    subplot(1,2,2)
    imshow(BordesKirsch2),title('BordesKirsch K1 45°')
    set(gcf,'units','normalized','outerposition',[0 0 1 1])

    figure(numerofig+1)
    subplot(1,2,1)
    imshow(BordesKirsch3),title('BordesKirsch K2 90°')
    subplot(1,2,2)
    imshow(BordesKirsch4),title('BordesKirsch K3 135°')
    set(gcf,'units','normalized','outerposition',[0 0 1 1])
    
    figure(numerofig+2)
    subplot(1,2,1)
    imshow(BordesKirsch5),title('BordesKirsch K4 180°')
    subplot(1,2,2)
    imshow(BordesKirsch6),title('BordesKirsch K5 235°')
    set(gcf,'units','normalized','outerposition',[0 0 1 1])
    
    figure(numerofig+3)
    subplot(1,2,1)
    imshow(BordesKirsch7),title('BordesKirsch K6 270°')
    subplot(1,2,2)
    imshow(BordesKirsch8),title('BordesKirsch K7 315°')
    set(gcf,'units','normalized','outerposition',[0 0 1 1])
    
    figure(numerofig+4)
    subplot(1,2,1)
    imshow(uint8(Imagen)),title('Original')
    subplot(1,2,2)
    imshow(Kirsch),title('Kirsch')
    set(gcf,'units','normalized','outerposition',[0 0 1 1])
end

