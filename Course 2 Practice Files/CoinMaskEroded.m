function [BW,maskedImage] = CoinMaskEroded(X)
%segmentImage Segment image using auto-generated code from Image Segmenter app
%  [BW,MASKEDIMAGE] = segmentImage(X) segments image X using auto-generated
%  code from the Image Segmenter app. The final segmentation is returned in
%  BW, and a masked image is returned in MASKEDIMAGE.

% Auto-generated by imageSegmenter app on 10-Sep-2023
%----------------------------------------------------


% Threshold image with global threshold
BW = imbinarize(im2gray(X));

% Erode mask with default
radius = 6;
decomposition = 0;
se = strel('disk', radius, decomposition);
BW = imerode(BW, se);

% Erode mask with default
radius = 2;
decomposition = 0;
se = strel('disk', radius, decomposition);
BW = imerode(BW, se);

% Erode mask with default
radius = 3;
decomposition = 0;
se = strel('disk', radius, decomposition);
BW = imerode(BW, se);

% Erode mask with default
radius = 3;
decomposition = 0;
se = strel('disk', radius, decomposition);
BW = imerode(BW, se);

% Create masked image.
maskedImage = X;
maskedImage(~BW) = 0;
end

