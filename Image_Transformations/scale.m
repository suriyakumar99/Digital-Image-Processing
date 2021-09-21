img=imread('cameraman.jpg');
figure;
imshow(img);
truesize
[r c]=size(img);
re_size=[2 2]; %Scale matrix
t=[];
t1=1;
t2=1;
for i=1:re_size(1):r
    for j=1:re_size(2):c
        t(t1,t2)=img(i,j);
        t2=t2+1;
    end
    t1=t1+1;
    t2=1;
end
t=uint8(t);
figure;
imshow(t);
truesize


