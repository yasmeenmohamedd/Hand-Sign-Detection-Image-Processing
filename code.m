I = imread('1.jpg');
igray= rgb2gray(I);
binaryimg= im2bw(igray,0.9);
figure,imshow(binaryimg);
img=~binaryimg;
figure,imshow(img);
imgfilled=imfill(img,'holes');
figure,imshow(imgfilled);
SEE= strel('rectangle',[120 100]);
img2 = imopen(imgfilled, SEE);
figure,imshow(img2);
diff= imabsdiff(img2,imgfilled);
SE3=strel('rectangle',[40 25]);
final = imerode(diff,SE3);
figure,imshow(final);
[objects,num]=bwlabel(final);
disp(num);