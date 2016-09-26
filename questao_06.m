pkg load image;
img = imread("imagem_06.png");

BW = im2bw(img, 0.5);

s = [0 0 0; 1 1 1; 0 0 0];
imgerod = imerode(BW, s);

imshow(imgerod);