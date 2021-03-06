img = imread('Lenna.png');
[R,G,B] = imsplit(img);
image_reshape= [reshape(double(R),[],1) reshape(double(G),[],1) reshape(double(B),[],1)];
tx=10;
ty=10;
trans = [1,0,0;0,1,0;tx,ty,1];
img = image_reshape*trans;
size(img);
[X,Y] = size(R);
R = reshape(img(:,1),X,Y);
G = reshape(img(:,2),X,Y);
B = reshape(img(:,3),X,Y);
img_out(:,:,1) = R ;
img_out(:,:,2) = G ;
img_out(:,:,3) = B ;
img_out = uint8(img_out);
imshow(img_out);
