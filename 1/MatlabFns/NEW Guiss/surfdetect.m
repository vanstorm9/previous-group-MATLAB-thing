function surfdetect(a)
global picn
global Xbar
global objpic
sumpmax=0;
imgchoose=1;
binname=['bini',num2str(a),'.mat'];
load(binname)
switchobject(a)
for k=1:picn
sump=0;
sceneImage = nowimage;
findpic(a,k)
tf1 = objpic;
ball = rgb2gray(tf1);
scene = rgb2gray(sceneImage);
ballPoints = detectSURFFeatures(ball); 
scenePoints = detectSURFFeatures(scene);
[ballFeatures, ballPoints] = extractFeatures(ball, ballPoints); % Extracts features of ball using SURF features(boxpoints)
[sceneFeatures, scenePoints] = extractFeatures(scene, scenePoints); % Extracts features of scene using SURF features(boxpoints)
ballPairs = matchFeatures(ballFeatures, sceneFeatures, 'MaxRatio', 1); % pairs up ball features and scene features
matchedBoxPoints = ballPoints(ballPairs(:, 1), :); %obtains matched points in ball
matchedScenePoints = scenePoints(ballPairs(:, 2), :); %obtains matched points in ball
sump=matchedBoxPoints.Count;
if sump>sumpmax
    sumpmax=sump;
    imgchoose=k;
end
end
sump=0;
k=imgchoose
sceneImage = nowimage;
findpic(a,k)
tf1 = objpic;
ball = rgb2gray(tf1);
scene = rgb2gray(sceneImage);
ballPoints = detectSURFFeatures(ball); 
scenePoints = detectSURFFeatures(scene);
[ballFeatures, ballPoints] = extractFeatures(ball, ballPoints); % Extracts features of ball using SURF features(boxpoints)
[sceneFeatures, scenePoints] = extractFeatures(scene, scenePoints); % Extracts features of scene using SURF features(boxpoints)
ballPairs = matchFeatures(ballFeatures, sceneFeatures, 'MaxRatio', 1); % pairs up ball features and scene features
matchedBoxPoints = ballPoints(ballPairs(:, 1), :); %obtains matched points in ball
matchedScenePoints = scenePoints(ballPairs(:, 2), :); %obtains matched points in ball
figure;
sump=matchedBoxPoints.Count
if sump>2
showMatchedFeatures(ball, scene, matchedBoxPoints, ...
    matchedScenePoints, 'montage'); % displays ALL POSSIBLE matched features
title('Putatively Matched Points (Including Outliers)');
[tform, inlierBoxPoints, inlierScenePoints] = ... %i think it estimate where the item is based on points
    estimateGeometricTransform(matchedBoxPoints, matchedScenePoints, 'affine');
figure;
Q1 = showMatchedFeatures(ball, scene, inlierBoxPoints, ...
    inlierScenePoints, 'montage'); 
scenepoints=inlierScenePoints.Location;
X1 = scenepoints(:,1);
Y = scenepoints(:,2);
Xbar = mean(X1)
end