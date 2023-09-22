function [BW_out,properties] = filterRegionsPuzzle(BW_in)
%filterRegions Filter BW image using auto-generated code from imageRegionAnalyzer app.

% Auto-generated by imageRegionAnalyzer app on 09-Sep-2023
%---------------------------------------------------------

BW_out = BW_in;

% Filter image based on image properties.
BW_out = bwpropfilt(BW_out,'Area',[10000, 11000]);

% Get properties.
properties = regionprops(BW_out, {'Area', 'MajorAxisLength', 'MinorAxisLength', 'Perimeter'});