pkg load image;
img = imread("imagem_01.jpg");

sigma = 5;

figure('position', [100 100 700 500], 'name', 'Filtro Gaussian - 3x3');

subplot(1,2,1), imshow(img);

l = rgb2gray(img);
h = fspecial('gaussian', 3, sigma);
l1 = uint8(round(filter2(h, l)));
subplot(1,2,2), imshow(l1);

figure('position', [100 100 700 500], 'name', 'Filtro Gaussian - 7x7');

subplot(1,2,1), imshow(img);

l = rgb2gray(img);
h = fspecial('gaussian', 7, sigma);
l2 = uint8(round(filter2(h, l)));
subplot(1,2,2), imshow(l2);

figure('position', [100 100 700 500], 'name', 'Filtro Gaussian - 9x9');

subplot(1,2,1), imshow(img);

l = rgb2gray(img);
h = fspecial('gaussian', 9, sigma);
l3 = uint8(round(filter2(h, l)));
subplot(1,2,2), imshow(l3);