img=rgb2gray(imread('Lenna.png'));
subplot(1,2,1)
imshow(img)
subplot(1,2,2)
new = img(:,end:-1:1,:);
imshow(new);