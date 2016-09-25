% % itemImage = imread(document);
% colorVid = webcam('Microsoft LifeCam Cinema');
% preview(colorVid);
%%
global ref_Image
ro=[{'r1.jpg'},{'r2.jpg'},{'r3.jpg'},{'r4.jpg'},{'r5.jpg'},{'r6.jpg'},{'r7.jpg'},{'r8.jpg'}];
vid = videoinput('winvideo', 2, 'YUY2_1280x720');
src = getselectedsource(vid);
vid.FramesPerTrigger = 1;
vid.ReturnedColorspace = 'rgb';
src.BacklightCompensation = 'off';
src.ExposureMode = 'manual';
src.FocusMode = 'manual';
src.WhiteBalanceMode = 'manual';
% src.ExposureMode = 'auto';
triggerconfig(vid, 'manual');
start(vid);
pause(1.0);
trigger(vid);
ne = getdata(vid);
save('robot6.mat', 'ne');
mmax=0;
for k=1:8
choosepic(k)
sceneImage = ne;
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
amount1=matchedBoxPoints.Count
if amount1>mmax
    mmax=k
end
end
k1=mmax
choosepic(k1)
sceneImage = ne;
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
% Draws a box around ball
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
% title('Detected Elephant and Box');
% 
% figure;
% imshow(scene);
% hold on;
% plot(line(newBoxPolygon(:, 1), newBoxPolygon(:, 2), 'Color', 'b'))
% s = regionprops(sceneImage, 'centroid')
% Pixel Location Output
% Xbar = mean(X);
% Ybar = mean(Y);
% ratio = 5.5/300; % width of marker / # pixel distance of marker
% distanceInches = Xbar*ratio
% xobject=distanceInches*195/12.5
