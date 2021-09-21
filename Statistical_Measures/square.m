img=imread("cameraman.jpg");
subplot(1,2,1)
%img=int64(img);
imshow(img);
img=double(img);
sqr_img = zeros(size(img));
for i = 1 : size(img, 1)
    for j = 1 : size(img, 2)
        sqr_img(i, j) = img(i,j).^2;
    end
end
sqr_img = int16(sqr_img);
subplot(1,2,2)
imshow(sqr_img);
