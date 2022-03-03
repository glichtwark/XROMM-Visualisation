function [transform_matrix] = load_tra_file(file)
%This function loads biplanar tracking, smooths the data and exports a 4x4
% Written by Jayishni Maharaj 2020

if nargin < 1
    [fname, pname] = uigetfile('*.tra', 'Choose a file-');
    file = [pname fname];
end

%Load tracking file
tracked_16x1 = csvread (file);
tracked_16x1= tracked_16x1(:,1:16); % Make sure data is 16 by 1
nFrames = size(tracked_16x1,1);

% reshape data from nFrames x 16 to 4 x 4 x nFrames
transform_matrix = reshape(tracked_16x1',4,4,nFrames);
%convert to mm
transform_matrix(4,1:3,:) = transform_matrix(4,1:3,:)/1000;
% transpose each matrix (swap columns with rows)
transform_matrix = permute(transform_matrix,[2 1 3]);

end

