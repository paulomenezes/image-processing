im = double(imread('imagem_05.jpg'));

inputRed = im(:,:,1);
inputGreen = im(:,:,2);
inputBlue = im(:,:,3);

outputRed = (inputRed * .53) + (inputGreen *.43) + (inputBlue * .32);
outputGreen = (inputRed * .42) + (inputGreen *.32) + (inputBlue * .24);
outputBlue = (inputRed * .26) + (inputGreen *.21) + (inputBlue * .16);

out = uint8(cat(3, outputRed, outputGreen, outputBlue));

figure;
imshow(out);