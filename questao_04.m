pkg load image;
img = imread("imagem_04.png");

ft = fft2(img);
ftc = fftshift(ft);
ftclog = log(1 + abs(ftc));

[rows, cols] = size(img);

u = (ones(rows, 1) * [1:cols] - (fix(cols/2) + 1)) / cols;
v = ([1:rows]' * ones(1, cols) - (fix(rows/2)+1)) / rows;

radius = sqrt(u.^2 + v.^2);
n = 4;
cutoff = 0.05;
filt = 1 ./ (1.0 + (radius ./ cutoff).^(2*n));

filtc = fftshift(filt);

imfilt = abs(ifft2(filtc.*ft));
figure, imshow(imfilt, []);

cutoff = 0.3;
filt = 1 ./ (1.0 + (radius ./ cutoff).^(2*n));

filtc = fftshift(filt);

imfilt = abs(ifft2(filtc.*ft));
figure, imshow(imfilt, []);

##

cutoff = 0.05;
filtpa = 1 - filt;

imfilt = abs(ifft2(filtc.*ft));
figure, imshow(imfilt, []);

cutoff = 0.3;
filt = 1 ./ (1.0 + (radius ./ cutoff).^(2*n));

filtc = fftshift(filt);

imfilt = abs(ifft2(filtc.*ft));
figure, imshow(imfilt, []);

##
sigma = 5;
l = img;
h = fspecial('gaussian', 3, sigma);
l1 = uint8(round(filter2(h, l)));
figure, imshow(l1);

sigma = 50;
h = fspecial('gaussian', 3, sigma);
l1 = uint8(round(filter2(h, l)));
figure, imshow(l1);