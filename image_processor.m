%Image Processor Program

%Submitted as a part of a Signals and Systems Laboratory Assignment 
%by Robert Valencia to Dr. T. Todd, McMaster University, Hamilton,ON
%See lab report for detailed explanation

%import image to matlab
image=imread('original_image.png');
%convert pixel data typ to double-precision data type
image_of_doubles=double(image);
%plot pixel values histogram of original image
figure(1)
[n_elements,centers]=hist(image_of_doubles(:),20);
bar(centers,n_elements);
xlim([0 255]);
title('Orignal Image Histogram');
xlabel('pixel value');
ylabel('frequency');
%show original image (low contrast))
figure(2)
imshow(uint8(image_of_doubles));
% image transformation
a=3.5;
b=-350;
fixed_image=a.*image_of_doubles+b;
%plot pixel values histogram of fixed image
figure(3)
[n_elements,centers]=hist(fixed_image(:),20);
bar(centers,n_elements);
xlim([0 255]);
title('Fixed Image Histogram');
xlabel('pixel value');
ylabel('frequency');
%show fixed image (low contrast))
figure(4)
imshow(uint8(fixed_image));
%save fixed image
image_to_save=uint8(fixed_image);
imwrite(image_to_save,'saved_image.png');

