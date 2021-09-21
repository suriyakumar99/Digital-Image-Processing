img = rgb2gray(imread('Lenna.png'));
img2 = zeros([size(img,1) size(img,2) 3]);
map = colormap(jet(256));
R = map(:,1);
G = map(:,2);
B = map(:,3);
img2(:,:,1) = R(img);
img2(:,:,2) = G(img);
img2(:,:,3) = B(img);
img2 = im2uint8(img2);
imshow(img2);

