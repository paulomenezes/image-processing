pkg load image;
img = imread("imagem_03.jpg");
l = rgb2gray(img);

l1 = edge(l, 'Sobel', [], 'horizontal');
figure, imshow(l1);

l2 = edge(l, 'Sobel', [], 'vertical');
figure, imshow(l2);

l3 = edge(l, 'Sobel', [], 'both');
figure, imshow(l3);