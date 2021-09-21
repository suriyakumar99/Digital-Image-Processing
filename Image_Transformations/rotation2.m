img=imread('Lenna.png');
m=1;
deg=180;
slices=3;
C=uint8(zeros([size(img,1) size(img,2) slices ]));
z1=zeros([size(img,1)*size(img,2) 1]);
z2=zeros([size(img,2)*size(img,1) 1]);

x_mid=(size(C,1)+1)/2;
x_mid=round(x_mid);
y_mid=(size(C,2)+1)/2;
y_mid=round(y_mid);

for i=1:size(img,1)
    i1=i-x_mid;
    for j=1:size(img,2)
%         theta=angle(i1);
%         r1=rho*exp(j*theta);
%         [t,r]=[theta r1];
        %[t,r]=[i1/(j-y_mid), (sqrt(i1.^2+(j-y_mid).^2))]
        [t,r]=cart2pol(i1,j-y_mid);
        t1=radtodeg(t)+deg;
        t=degtorad(t1);
        [x,y]=pol2cart(t,r);
        z1(m)=round(x+x_mid);
        z2(m)=round(y+y_mid);
        m=m+1;
              
    end
   
end

z1(find(z1 < 1))=1;
z2(find(z2 < 1))=1;
n=1;
for i=1:size(img,1)
    for j=1:size(img,2)
        C(z1(n),z2(n),:)=img(i,j,:);
        n=n+1;
    end
   
end
imshow(C);