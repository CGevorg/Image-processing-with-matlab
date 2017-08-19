% TASK { Rotate the image by 45 and 90 degrees.}
% 
function rotateImage(angle) 
   I = imread('../images/apple.jpg');
   I = imrotate(I,angle);
   imshow(I)
end