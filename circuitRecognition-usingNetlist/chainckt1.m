clc;
clear all;
close all;
i1=imread('C:\Users\kalki\Pictures\IMG_3081.jpg');

%imshow(v1);
%imshow(i);
se=strel('diamond',2);
a1=imcrop(i1);
a2=imcomplement(a1);
i2=imresize(a2,[512 512],'bilinear');
%imshow(i1);
%i2=imcomplement(im2bw(i1));
for i=3:1:512
for j=3:1:512
if(i2(i,j)==1)
% if(c21(i,j+1)==1 && c21(i,j-1)==1)
if(i2(i+1,j)==1 && i2(i-1,j)==1)
% if(c21(i,j+1)==1 || c21(i,j-1)==1 || c21(i+1,j+1)==1 || c21(i-1,j+1)==1 || c21(i+1,j)==1 || c21(i-1,j-1)==1 || c21(i+1,j-1)==1)
a222(i,j)=1;
else
a222(i,j)=0;
end
end
end
end

%i2=imclose(i2,se);
%i2=imdilate(i2,se);
%imshow(i2);
%i3=imcrop(i2);
%imshow(i3);
%i4=bwmorph(i2,'thin',inf);
%disp(size(i4));
%imshow(i4);
%i4=edge(i4,'canny');
%imshow(i4);
B=bwboundaries(a222,'noholes');
disp(B);
d=cellfun('length',B);
[maxd,k]=max(d);
b=B{k};
[m n]=size(v1);
%i5=i4;
v1=bound2im(b,m,n);
[s,su]=bsubsamp(b,35);
g2=bound2im(s,m,n);
cn=connectpoly(s(:,1),s(:,2));
g3=bound2im(cn,m,n);
c=fchcode(su);
disp(c);