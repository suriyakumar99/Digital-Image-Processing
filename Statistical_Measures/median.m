img=imread("Lenna.png");
img_size=size(img,1)+size(img,2);
re_img=reshape(double(img),[],1);
re_img=sort(re_img);
n=round((img_size)/2)
re_img(n,1)
