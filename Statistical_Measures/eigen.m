img=imread("images/cameraman.jpg");
type = class(img);
img = double(img);
c = zeros(size(img,1),size(img,2));
c(1:size(img,1),1:size(img,2)) = img;
[X, Y] = eig(c);
eval(['A = ',type,'(abs(X*Y*X^(-1)));']);
imshow(A)
