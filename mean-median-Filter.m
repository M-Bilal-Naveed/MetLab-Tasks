
inputImage = imread('photo.png'); 
inputImage = rgb2gray(inputImage); 

figure;
imshow(inputImage);	
title('Original Image');


meanFilter = fspecial('average', [3 3]);
meanFilteredImage = imfilter(inputImage, meanFilter, 'replicate'); 


figure;
imshow(meanFilteredImage);
title('Mean Filtered Image');


medianFilteredImage = medfilt2(inputImage, [3 3]); % Apply 3x3 median filter


figure;
imshow(medianFilteredImage);
title('Median Filtered Image');