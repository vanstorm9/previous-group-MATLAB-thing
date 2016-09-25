ref_Image = imread('gluecombine.jpg');
webcamlist;
colorVid = webcam('Microsoft® LifeCam Cinema(TM)');
preview(colorVid);
%%
sceneImagec = snapshot(colorVid);
sceneImage = imcrop(sceneImagec,[379 23 665 478]);
scene1 = flipud(sceneImage);
sceneU = fliplr(scene1);
%%
imshow(sceneU);
%%
ball = rgb2gray(ref_Image);
scene = rgb2gray(sceneU);
ballPoints = detectSURFFeatures(ball); % SURF features of ball
scenePoints = detectSURFFeatures(scene); %SURF features of scene
%%
figure;
imshow(ball);
title('100 Strongest Feature Points from Box Image');
hold on;
plot(selectStrongest(ballPoints, 300)); % Shows the strongest hundred points of ball
%% Shows Strongest SURF features of scene
figure;
imshow(scene);
title('100 Strongest Feature Points from Scene Image');
hold on;
plot(selectStrongest(scenePoints, 300));
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
figure;
Q = showMatchedFeatures(ball, scene, inlierBoxPoints, ...
    inlierScenePoints, 'montage');  % supposed to show correct matched features
title('Matched Points (Inliers Only)');
%%
figure;
imshow(scene); hold on
plot(inlierScenePoints)
scenepoints=inlierScenePoints.Location;
X = scenepoints(:,1);
Y = scenepoints(:,2);
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
% title('Detected Object');
%% Pixel Location Output
Xbar = mean(X);
Ybar = mean(Y);
ratio = 5.5/300; % width of marker / # pixel distance of marker
distanceInches = Xbar*ratio
