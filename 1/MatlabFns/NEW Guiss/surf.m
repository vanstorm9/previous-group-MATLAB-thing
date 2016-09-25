k=1;
mmax=0;
load('empt62.mat');
sceneImage = n;
ref_Image=imread('gluecombine.jpg');
ball = rgb2gray(ref_Image);
scene = rgb2gray(sceneImage);
ballPoints = detectSURFFeatures(ball); % SURF features of ball
scenePoints = detectSURFFeatures(scene); %SURF features of scene
%%
[ballFeatures, ballPoints] = extractFeatures(ball, ballPoints); % Extracts features of ball using SURF features(boxpoints)
[sceneFeatures, scenePoints] = extractFeatures(scene, scenePoints); % Extracts features of scene using SURF features(boxpoints)
ballPairs = matchFeatures(ballFeatures, sceneFeatures, 'MaxRatio', 1); % pairs up ball features and scene features
matchedBoxPoints = ballPoints(ballPairs(:, 1), :); %obtains matched points in ball
matchedScenePoints = scenePoints(ballPairs(:, 2), :); %obtains matched points in ball

ball = rgb2gray(ref_Image);
scene = rgb2gray(sceneImage);
ballPoints = detectSURFFeatures(ball); % SURF features of ball
scenePoints = detectSURFFeatures(scene); %SURF features of scene
%%
[ballFeatures, ballPoints] = extractFeatures(ball, ballPoints); % Extracts features of ball using SURF features(boxpoints)
[sceneFeatures, scenePoints] = extractFeatures(scene, scenePoints); % Extracts features of scene using SURF features(boxpoints)
ballPairs = matchFeatures(ballFeatures, sceneFeatures, 'MaxRatio', 1); % pairs up ball features and scene features
matchedBoxPoints = ballPoints(ballPairs(:, 1), :); %obtains matched points in ball
matchedScenePoints = scenePoints(ballPairs(:, 2), :); %obtains matched points in ball
figure;
i=matchedBoxPoints;
showMatchedFeatures(ball, scene, matchedBoxPoints, ...
    matchedScenePoints, 'montage'); % displays ALL POSSIBLE matched features
title('Putatively Matched Points (Including Outliers)');
[tform, inlierBoxPoints, inlierScenePoints] = ... %i think it estimate where the item is based on points
    estimateGeometricTransform(matchedBoxPoints, matchedScenePoints, 'affine');



figure;
Q1 = showMatchedFeatures(ball, scene, inlierBoxPoints, ...
    inlierScenePoints, 'montage');  % supposed to show correct matched features
title('Matched Points (Inliers Only)');

figure;
imshow(scene); hold on
plot(inlierScenePoints)
scenepoints=inlierScenePoints.Location;
X = scenepoints(:,1);
Y = scenepoints(:,2);
mean(X)
mean(Y)