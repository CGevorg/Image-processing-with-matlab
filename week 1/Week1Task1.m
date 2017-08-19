% convert image from 256 levels to given level. Show only with levels with 2
% power levels.
% L is a level for example 2 we want to divide to black or with
function Week1Task1(L)
    I = imread('../images/apple.jpg');
    Grey = rgb2gray(I);
    [rowCount,colCount] = size(Grey);
    for i  = 1 : rowCount
        for j = 1 : colCount
            pixel = Grey(i,j);
            count = floor(pixel/(floor(256/L)));
            if(mod(count,2) == 0)
                Grey(i,j) = floor(pixel/floor(256/L))*floor(256/L);
            else
                Grey(i,j) = floor(pixel/floor(256/L))*floor(256/L) - 1;
        end
    end
    %imshow(Grey)
    imshow(Grey)
end