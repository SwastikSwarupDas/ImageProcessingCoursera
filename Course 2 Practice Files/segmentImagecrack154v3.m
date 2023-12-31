function [BW,maskedImage] = segmentImagecrack154v3(X)
%segmentImage Segment image using auto-generated code from Image Segmenter app
%  [BW,MASKEDIMAGE] = segmentImage(X) segments image X using auto-generated
%  code from the Image Segmenter app. The final segmentation is returned in
%  BW, and a masked image is returned in MASKEDIMAGE.

% Auto-generated by imageSegmenter app on 09-Sep-2023
%----------------------------------------------------

X = im2gray(X);

% Threshold image with global threshold
BW = imbinarize(im2gray(X));

% Invert mask
BW = imcomplement(BW);

% Fill holes
BW = imfill(BW, 'holes');

% Invert mask
BW = imcomplement(BW);

% Fill holes
BW = imfill(BW, 'holes');

% Invert mask
BW = imcomplement(BW);

% Create masked image.
maskedImage = X;
maskedImage(~BW) = 0;
end

