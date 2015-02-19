clear
figure;
Xm = 1:14
B = transpose(Xm);
A = imagesc(Xm)
axis off
saveas(A,'aaa.png','png');
%imwrite(A,'aaa.png', 'fmt', 'png' )
%set(gca,'color','none')

img = imread('AUSStudio.png');
 imshow(img);
%figure;
%imagesc(img);
%xpos = get(img, 'XData');
hold on



[img2, map, alpha] = imread('aaa.png');

%img2 = imresize(img2, 0.1);
%alpha = imresize(alpha, 0.1);
%alpha = repmat(alpha, [1 1 3]);

%img2 = im2double(img2);
%alpha = im2double(alpha);
%img = im2double(img);

%x = 440;
%y = 450;

% Let's combine the images.
%img3 = img;
%img3(y:y+size(img2,1)-1, x:x+size(img2,2)-1, :) = ...
 %   img2 .* alpha + ...
%    img(y:y+size(img2,1)-1, x:x+size(img2,2)-1, :) .* (1 - alpha);

% An display the result.
%imshow(img3);



img2 = imresize(img2,[15 800]);
%img2 = imrotate(img2,90)
%set(img2,'Position',[10 58 100 20]) 

%alpha = imresize(alpha,[35 800]);

%alpha = repmat(alpha, [1 1 3]);

%img2 = im2double(img2);
%alpha = im2double(alpha);
%imagesc(150, 550, img2);
uniquebgcolor=[255 255 255]; 
mask = bsxfun(@eq,img2,reshape(uniquebgcolor,1,1,3));
img2 = imagesc(150, 550, img2,'alphadata',1-double(all(mask,3)));
saveas(img2,'Final.png','png');
%imwrite(img2 ,'Final2.png');
%imagesc(150, 550, img2);

%xpos = xpos + 20; % shift right a bit
%set(img2, 'XData', xpos);


