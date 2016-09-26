pkg load image;
img = imread("imagem_02.jpg");

figure('position', [100 100 700 500], 'name', 'Salt and Pepper');

subplot(1,2,1), imshow(img);

l1 = medfilt2(img, 5);
subplot(1,2,2), imshow(l1);