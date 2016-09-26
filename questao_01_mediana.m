pkg load image;
img = imread("imagem_01.jpg");

figure('position', [100 100 700 500], 'name', 'Filtro Mediana - 3x3');

subplot(1,2,1), imshow(img);
l = rgb2gray(img);
l1 = medfilt2(l, [3 3]);
subplot(1,2,2), imshow(l1);

figure('position', [100 100 700 500], 'name', 'Filtro Mediana - 7x7');

subplot(1,2,1), imshow(img);
l = rgb2gray(img);
l2 = medfilt2(l, [7 7]);
subplot(1,2,2), imshow(l2);

figure('position', [100 100 700 500], 'name', 'Filtro Mediana - 9x9');

subplot(1,2,1), imshow(img);
l = rgb2gray(img);
l3 = medfilt2(l, [9 9]);
subplot(1,2,2), imshow(l3);