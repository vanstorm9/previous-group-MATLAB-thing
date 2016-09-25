%% Reads image of box
itemImage = imread('marker.jpg');
%% Kinect adapter and devices
info = imaqhwinfo('kinect');
%% Create videoinput Object for Color Stream
info.DeviceInfo(1);
info.DeviceInfo(2);
colorVid = videoinput('kinect',1,'RGB_1280x960');
depthVid = videoinput('kinect',2);
colorVid.ROIPosition = [267 254 789 694];
sceneImage = getsnapshot(colorVid);
%% Turns image gray. Needs to be gray to detect features
item = rgb2gray(itemImage);
scene = rgb2gray(sceneImage);
%% Detect SURF features
itemPoints = detectSURFFeatures(item); % SURF features of ball
scenePoints = detectSURFFeatures(scene); %SURF features of scene
%figure;
%imshow(item);
%title('100 Strongest Feature Points from Box Image');
%hold on;
%plot(selectStrongest(itemPoints, 100)); % Shows the strongest hundred points of ball
%% Shows Strongest SURF features of scene
%figure;
%imshow(scene);
%title('100 Strongest Feature Points from Scene Image');
%hold on;
%plot(selectStrongest(scenePoints, 50));
%%
regions = detectMSERFeatures(scene);
%plot(regions, 'showPixelList', true, 'showEllipses', false);
%figure; imshow(scene); hold on;
plot(regions); % by default, plot displays ellipses and centroids
%%
[itemFeatures, itemPoints] = extractFeatures(item, itemPoints); % Extracts features of ball using SURF features(boxpoints)
[sceneFeatures, scenePoints] = extractFeatures(scene, scenePoints); % Extracts features of scene using SURF features(boxpoints)
itemPairs = matchFeatures(itemFeatures, sceneFeatures, 'MaxRatio', 0.9); % pairs up ball features and scene features
matchedItemPoints = itemPoints(itemPairs(:, 1), :); %obtains matched points in ball
matchedScenePoints = scenePoints(itemPairs(:, 2), :); %obtains matched points in ball
%figure;
%showMatchedFeatures(item, scene, matchedItemPoints, ...
%    matchedScenePoints, 'montage'); % displays ALL POSSIBLE matched features
%title('Putatively Matched Points (Including Outliers)');
[tform, inlierBoxPoints, inlierScenePoints] = ... %i think it estimate where the item is based on points
    estimateGeometricTransform(matchedItemPoints, matchedScenePoints, 'affine');
%%
%figure;
%Q = showMatchedFeatures(item, scene, inlierBoxPoints, ...
%    inlierScenePoints, 'montage');  % supposed to show correct matched features
%title('Matched Points (Inliers Only)');
%%
%figure;
%imshow(sceneImage); hold on
%plot(inlierScenePoints)
scenepoints=inlierScenePoints.Location;
X = scenepoints(:,1);
Y = scenepoints(:,2);
%mean(X)
%mean(Y)
%% Draws a box around ball
itemPolygon = [1, 1;...                           % top-left
        size(itemImage, 2), 1;...                 % top-right
        size(itemImage, 2), size(itemImage, 1);... % bottom-right
        1, size(itemImage, 1);...                 % bottom-left
        1, 1];                   % top-left again to close the polygon
newItemPolygon = transformPointsForward(tform, itemPolygon);
figure;
imshow(sceneImage);
hold on;
line(newItemPolygon(:, 1), newItemPolygon(:, 2), 'Color', 'y'); %draws box around ball label
plot(inlierScenePoints)
title('Detected Item');
%% Pixel Location Output
Xbar = mean(X);
Ybar = mean(Y);
ratio = 5.5/297; % width of marker / 297 pixel distance of marker
distanceInches = Xbar*ratio