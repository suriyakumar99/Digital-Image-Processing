img = imread("cameraman.jpg");
subplot(1,2,1)
imshow(img);
img = double(img);  
x_shr=0.3;
y_shr=0.2;
[r, c] = size(img);     
[x, y] = meshgrid(1:r, 1:c); 
img_co = [x(:).'; y(:).'];            
shr = [1 x_shr; y_shr 1];           
mat = shr*img_co;       
img2 = interp2(img,mat(1, :),mat(2, :),'linear',0);                  
img2 = reshape(img2, [], c); 
img2 = uint8(img2);
subplot(1,2,2)
imshow(img2);