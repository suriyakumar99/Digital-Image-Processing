img  = imread('Lenna.png');
Tx = 50;
Ty = 100; 
img2 = zeros(size(img,1)+Ty-1, size(img,2)+Tx-1, size(img,3));
img2=uint8(img2); 

% for i = 1 : size(img2, 1)
%     for j = 1 : size(img2, 2)
%             img(i,j,:) =img2(i,j,:);
%     end
% end
img2(Ty:size(img2,1), Tx:size(img2,2), :)  = img;
imshow(img2)