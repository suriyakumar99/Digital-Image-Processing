img=imread("cameraman.jpg");
subplot(1,2,1)
imshow(img);
img=double(img);
img=sqrt(img);
img = int8(img);
subplot(1,2,2)
imshow(img);
