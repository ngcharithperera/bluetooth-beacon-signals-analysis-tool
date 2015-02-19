% replace with an image of your choice
img = imread('AUSStudio.png');
 
figure;
imagesc(img);

%======================================


Xm = 1:14

B = transpose(Xm);
    

hold on;
imagesc( B );    
%plot(x,y,'b-*','linewidth',1.5);
image(10,10,B)

%colorbar; 
axis off  