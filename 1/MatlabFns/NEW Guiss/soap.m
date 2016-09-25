webcamlist;
colorVid = webcam('Microsoft® LifeCam Cinema(TM)');
preview(colorVid);
%%
ref_Image = imread('soapcombine.jpg');
%%
sceneImagec = snapshot(colorVid);
sceneImage = imcrop(sceneImagec,[282 0 687 480]);
scene1 = flipud(sceneImage);
sceneU = fliplr(scene1);
%sceneImage = imread('binoreo.jpg');
%sceneImage = imcrop(sceneImagec2);
%%
%imshow(sceneImage);
imshow(sceneU);
%%
% Get size of existing image A. 
%[rowsA colsA numberOfColorChannelsA] = size(ref_Image); 
% Get size of existing image B. 
%[rowsB colsB numberOfColorChannelsB] = size(sceneU); 
% See if lateral sizes match. 
%if rowsB ~= rowsA || colsA ~= colsB 
% Size of B does not match A, so resize B to match A's size. 
%sceneresize = imresize(sceneU, [rowsA colsA]); 
%end
ball = rgb2gray(ref_Image);
%scene = rgb2gray(sceneresize);
scene = rgb2gray(sceneImage);
%scene = rgb2gray(sceneU);
ballPoints = detectSURFFeatures(ball); % SURF features of ball
scenePoints = detectSURFFeatures(scene); %SURF features of scene
%%
figure;
imshow(ball);
title('100 Strongest Feature Points from Box Image');
hold on;
plot(selectStrongest(ballPoints, 300)); % Shows the strongest hundred points of ball
% Shows Strongest SURF features of scene
figure;
imshow(scene);
title('100 Strongest Feature Points from Scene Image');
hold on;
plot(selectStrongest(scenePoints, 300));
%%
%regions = detectMSERFeatures(scene);
%plot(regions, 'showPixelList', true, 'showEllipses', false);
%figure; imshow(scene); hold on;
%plot(regions); % by default, plot displays ellipses and centroids
%%
[ballFeatures, ballPoints] = extractFeatures(ball, ballPoints); % Extracts features of ball using SURF features(boxpoints)
[sceneFeatures, scenePoints] = extractFeatures(scene, scenePoints); % Extracts features of scene using SURF features(boxpoints)
ballPairs = matchFeatures(ballFeatures, sceneFeatures, 'MaxRatio', 1); % pairs up ball features and scene features
matchedBoxPoints = ballPoints(ballPairs(:, 1), :); %obtains matched points in ball
matchedScenePoints = scenePoints(ballPairs(:, 2), :); %obtains matched points in ball
figure;
showMatchedFeatures(ball, scene, matchedBoxPoints, ...
    matchedScenePoints, 'montage'); % displays ALL POSSIBLE matched features
title('Putatively Matched Points (Including Outliers)');
[tform, inlierBoxPoints, inlierScenePoints] = ... %i think it estimate where the item is based on points
    estimateGeometricTransform(matchedBoxPoints, matchedScenePoints, 'affine');
%%
%%
figure;
Q = showMatchedFeatures(ball, scene, inlierBoxPoints, ...
    inlierScenePoints, 'montage');  % supposed to show correct matched features
%title('Matched Points (Inliers Only)');
%%
figure;
imshow(scene); hold on
plot(inlierScenePoints)
scenepoints=inlierScenePoints.Location;
X = scenepoints(:,1);
Y = scenepoints(:,2);
%mean(X)
%mean(Y)
%% Draws a box around ball
% Polygon = [1, 1;...                           % top-left
%         size(ref_Image, 2), 1;...                 % top-right
%         size(ref_Image, 2), size(ref_Image, 1);... % bottom-right
%         1, size(ref_Image, 1);...                 % bottom-left
%         1, 1];                   % top-left again to close the polygon
% newBoxPolygon = transformPointsForward(tform, Polygon);
% figure;
% imshow(scene);
% hold on;
% mario=(line(newBoxPolygon(:, 1), newBoxPolygon(:, 2), 'Color', 'y')); %draws box around ball label
% plot(inlierScenePoints)
%title('Detected Elephant and Box');
%%
%figure;
%imshow(scene);
%hold on;
%plot(line(newBoxPolygon(:, 1), newBoxPolygon(:, 2), 'Color', 'b'))
%s = regionprops(sceneImage, 'centroid')
%% Pixel Location Output
Xbar = mean(X);
Ybar = mean(Y);
ratio = 5.5/300; % width of marker / # pixel distance of marker
distanceInches = Xbar*ratio