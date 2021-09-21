img=rgb2gray(imread("Lenna.png"));
%img=int64(img);
img=double(img);
sum=0;
stddev=0;
pix=512;
for i = 1 : size(img, 1)
    for j = 1 : size(img, 2)
        sum =sum + img(i,j);
    end
end
img_mean=sum/(pix*pix);
test=mean2(img);
for i=1 : size(img,1)
    for j=1 : size(img,2)
        stddev=stddev+((img(i,j)-img_mean).^2);
    end
end
stddev=stddev/(pix*pix);
stddev=sqrtm(stddev)
std2(img)