function varargout = GUI2(varargin)
% GUI2 MATLAB code for GUI2.fig
%      GUI2, by itself, creates a new GUI2 or raises the existing
%      singleton*.
%
%      H = GUI2 returns the handle to a new GUI2 or the handle to
%      the existing singleton*.
%
%      GUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI2.M with the given input arguments.
%
%      GUI2('Property','Value',...) creates a new GUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI2

% Last Modified by GUIDE v2.5 08-Nov-2015 18:37:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI2_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI2 is made visible.
function GUI2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI2 (see VARARGIN)

% Choose default command line output for GUI2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% % --- Executes on button press in pushbutton1.
% function pushbutton1_Callback(hObject, eventdata, handles)
% % hObject    handle to pushbutton1 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% 
% % --- Executes on button press in pushbutton2.
% function pushbutton2_Callback(hObject, eventdata, handles)
% % hObject    handle to pushbutton2 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
global A
global B
global C
global D
global E
global F
global G
global H
global I
global J
global K
global L
x = serial('COM6');
y = serial('COM5');
z= serial('COM3');
%s= serial('COM4');
set(x,'BaudRate',9600)
set(y,'BaudRate',9600)%110
set(z,'BaudRate',9600)
%set(s,'BaudRate',9600)
fopen(x);
fopen(y);
fopen(z);
%fopen(s);
pause(3)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bins=['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L'];
%bins=['A' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11' '12'];
Ti= [4.2 4.1 4.2 3.1 3 3.1 2.3 1.9 2.3 2.3 0.6 2.3]; %define processing time (we have to record this for each)
Wi=[A B C D E F G H I J K L]; %weight/points attributed for bin i
TWi=[Ti./Wi]; 
[M,i]=sort(TWi);
Order=bins(i);
x1='0';
x2='0';
y1='0';
y2='0';
for j=1:1
ord=Order(j)
op='1998';
cl='1999';
a=0;
b=0;
c=0;
switch ord
    case{'A','B','C'}
    y1='932';
    y2='432';
    case{'D','E','F'}
    y1='876';%y1='808';
    yd='68';
    y2='308';
    case{'G','H','I'}
    y1='684';
    y2='184';
    case{'J','K','L'}
    y1='560';
    y2='60';
end
switch ord
    case{'A','D','G','J'}
    x1='618';
    x2='118';
    case{'B','E','H','K'}
    x1='0';
    x2='0';
    case{'C','F','I','L'}
    x1='118';
    x2='618';
end
switch ord
       case{'A'}
        sx1='0';
        sy1='30';
        z1='730';
        case{'B'}
        sx1='0';
        sy1='25';
        z1='730';
        case{'C'}
        sx1='0';
        sy1='10';
        z1='730';
        case{'D'}
        sx1='0';
        sy1='30';
        z1='725';
        case{'E'}
        sx1='0';
        sy1='35';
        z1='720';
        case{'F'}
        sx1='30';
        sy1='45';
        z1='725';
        case{'G'}
        sx1='0';
        sy1='25';
        z1='730';
        case{'H'}
        sx1='30';
        sy1='25';
        z1='730';
        case{'I'}
        sx1='0';
        sy1='30';
        z1='730';
        case{'J'}
        sx1='0';
        sy1='25';
        z1='730';
        case{'K'}
        sx1='0';
        sy1='20';
        z1='730';
        case{'L'}
        sx1='0';
        sy1='40';
        z1='730';
end
z2=num2str(str2num(z1)-500);
sy2=num2str(str2num(sy1)+500);
xd=str2num(sx1);
if (xd>500)
    sx2=num2str(xd-500);
else
    sx2=num2str(xd+500);
end
%fprintf(z,'%s\n','');
%fprintf(x,'%s\n','');
a1=0
fprintf(x,'%s\n',x1);%移至摄像机中心
fprintf(y,'%s\n',y1);
del1=0;
while(a==0||b==0&&del1<100)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.5)
    del1=del1+1;
end
%123123
%% Reads image of box
itemImage = imread('markercombine.jpg');
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
distanceInches = Xbar*ratio;
xc1=num2str((distanceInches-6)/0.05+500);
xc2=num2str(str2num(xc1)-500); 
fprintf(x,'%s\n','0');%移至中心
fprintf(y,'%s\n','68');
del1=0;
while(a==0||b==0&&del1<100)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.5)
    del1=del1+1;
end
fprintf(x,'%s\n',xc1);%修正位置
fprintf(y,'%s\n',op);%开阀
%fprintf(z,'%s\n','0');%垂直转动
del1=0;
a=0;
while(a==0&&del1<100)
    a = str2num(fgetl(x));
    pause(0.5)
    del1=del1+1;
end
%fprintf(x,'%s\n','0');
fprintf(z,'%s\n',z1);%动手
%fprintf(y,'%s\n','0');
%fprintf(s,'%s\n',sb1);
c=0;
b=0;
%s=0;
del1=0;
while(c==0&&del1<100)
    c = str2num(fgetl(z));
    %d = str2num(fgetl(s));
    pause(0.5)
    del1=del1+1;
end
a1=1
fprintf(y,'%s\n',sy1);%修正距离
del1=0;
b=0;
while(b==0&&del1<100)
    b = str2num(fgetl(y));
    pause(0.5)
    del1=del1+1;
end
pause(2)
fprintf(y,'%s\n',sy2);%反修正距离
del2=0;
b=0;
while(b==0&&del2<100)
    b = str2num(fgetl(y));
    pause(0.5)
    del2=del2+1;
end
%fprintf(x,'%s\n','0');%归正
fprintf(z,'%s\n',z2);%收手
%fprintf(y,'%s\n','0');
%fprintf(s,'%s\n',sb2);
del2=0;
%b=0;
c=0;
%s=0;
while(c==0&&del2<100)
    c = str2num(fgetl(z));
    %d = str2num(fgetl(s));
    pause(0.5)
    del2=del2+1;
end
fprintf(x,'%s\n',xc2);%反修正位置
del2=0;
a=0;
while(a==0&&del2<100)
    a = str2num(fgetl(x));
    pause(0.5)
    del2=del2+1;
end
fprintf(x,'%s\n',x2);%返回中心
fprintf(y,'%s\n',y2);
del2=0;
a=0;
b=0;
while(a==0||b==0&&del2<100)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.5)
    del2=del2+1;
end
a1=2
fprintf(y,'%s\n',cl);%松手
pause(3);
end
fclose(x);
fclose(y);
fclose(z);
% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu13.
function popupmenu13_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu13 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu13


% --- Executes during object creation, after setting all properties.
function popupmenu13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu12.
function popupmenu12_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu12 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu12


% --- Executes during object creation, after setting all properties.
function popupmenu12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu11.
function popupmenu11_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu11 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu11


% --- Executes during object creation, after setting all properties.
function popupmenu11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10


% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9


% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
