img = imread('Lenna.png');
img = double(img);  
x_shr=0.1;
y_shr=0.1;
[r, c, nslices] = size(img);     
[x, y, z] = meshgrid(1:r, 1:c); 
img_co = [x(:).'; y(:).'];            
shr = [1 x_shr; y_shr 1];           
mat = shr*img_co;       
img2 = interp2(img,mat(1, :),mat(2, :),'linear',0);                  
img2 = reshape(img2, r, c); 
img2 = uint8(img2);
imshow(img2);