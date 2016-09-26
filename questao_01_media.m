pkg load image;
img = imread("imagem_01.jpg");

figure('position', [100 100 700 500], 'name', 'Filtro Media - 3x3');

subplot(1,2,1), imshow(img);

l = rgb2gray(img);

h = fspecial('average', 3);
l2 = uint8(round(filter2(h, l)));

subplot(1,2,2), imshow(l2);

figure('position', [100 100 700 500], 'name', 'Filtro Media - 7x7');

subplot(1,2,1), imshow(img);

l = rgb2gray(img);

h = fspecial('average', 7);
l2 = uint8(round(filter2(h, l)));

subplot(1,2,2), imshow(l2);

figure('position', [100 100 700 500], 'name', 'Filtro Media - 9x9');

subplot(1,2,1), imshow(img);

l = rgb2gray(img);

h = fspecial('average', 9);
l2 = uint8(round(filter2(h, l)));

subplot(1,2,2), imshow(l2);