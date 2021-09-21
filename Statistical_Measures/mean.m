img=rgb2gray(imread("Lenna.png"));
img=double(img);
%img=int64(img);
sum=0;
pix=512;
for i = 1 : size(img, 1)
    for j = 1 : size(img, 2)
        sum =sum + img(i,j);
    end
end
img_mean=sum/(pix*pix)
test=mean2(img)