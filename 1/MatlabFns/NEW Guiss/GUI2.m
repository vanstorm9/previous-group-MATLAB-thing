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
global M
global N
global O
global P
global Q
global R
global S
global T
global U
global V
global W
global X
global z1
global z2
x = serial('COM6');
y = serial('COM5');
z= serial('COM3');
s= serial('COM4');
set(x,'BaudRate',9600)
set(y,'BaudRate',9600)
set(z,'BaudRate',9600)
set(s,'BaudRate',9600)
fopen(x);
fopen(y);
fopen(z);
fopen(s);
pause(3)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bins=['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L'];
%bins=['A' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11' '12'];
Ti= [4.2 4.1 4.2 3.1 3 3.1 2.3 1.9 2.3 2.3 0.6 2.3]; %define processing time (we have to record this for each)
Wi=[A B C D E F G H I J K L]; %weight/points attributed for bin i
TWi=[Ti./Wi]; 
[M1,i]=sort(TWi);
Order=bins(i);
x1='0';
x2='0';
y1='0';
y2='0';

for j=1:4
ord=Order(j)
spin=0;
yuxian=0;
fprintf(s,'%s\n','105');
switch ord
    case{'A'}%ball2
        dxg='513';dxb='13';
        dyg='3560';dyb='3060';%60
        fyu='30';
        ydo='3025';yup='2225';
        zz='170';
        op='181';
        cl='182';
        z1='805';
        z2='305';
    case{'B'}%鸭子 ok
        dxg='8';dxb='508';
        dyg='3555';dyb='3055';%60
        fyu='30';
        ydo='3020';yup='2220';
        zz='100';
        op='180';
        cl='180';
        z1='745';
        z2='245';
    case{'C'}  %倾斜 ok
        dxg='20';dxb='520';
        dyg='3570';dyb='3070';%60
        fyu='30';
        spin=1;
        ydo='3025';yup='2225';
        zz='105';
        op='181';
        cl='182';
        z1='780';
        z2='280';
    case{'D'}% chee ok
      dxg='20';dxb='520';
        dyg='3585';dyb='3085';
        fyu='50';
        ydo='3025';yup='2225';
        zz='100';
        op='181';
        cl='182';
        z1='790';
        z2='290';
    case{'E'}%joke ok
        dxg='525';dxb='25';
        dyg='3570';dyb='3070';%60
        fyu='50';
        spin=2;
        ydo='3025';yup='2225';
        zz='105';
        op='181';
        cl='182';
        z1='780';
        z2='280';
    case{'F'}%球 ok
        dxg='518';dxb='18';
        dyg='3535';dyb='3035';
        fyu='50';
       ydo='3005';yup='2205';
        zz='100';
        op='180';
        cl='180';
        z1='710';
        z2='210';
    case{'G'} %index
        dxg='525';dxb='25';
        dyg='3560';dyb='3060';
        fyu='50';
        ydo='3020';yup='2220';
        zz='100';
        op='181';
        cl='182';
        z1='800';
        z2='300';
    case{'H'}%笔筒 ok
        dxg='12';dxb='512';
        dyg='3560';dyb='3060';
        fyu='3050';
        ydo='3010';yup='2210';
        zz='100';
        op='180';
        cl='180';
        z1='740';
        z2='240';
    case{'I'}%bottle
        dxg='520';dxb='20';
        dyg='3560';dyb='3060';
        fyu='3050';
        ydo='3010';yup='2210';
        zz='100';
        op='180';
        cl='180';
        z1='735';
        z2='235';
    case{'J'} %pen 
        dxg='5';dxb='505';
        dyg='3555';dyb='3055';
        fyu='50';
        ydo='3018';yup='2218';
        zz='100';
        op='181';
        cl='182';
        z1='785';
        z2='285';
    case{'K'}%book ok
        dxg='520';dxb='20';
        dyg='3555';dyb='3055';
        fyu='50';
        ydo='3015';yup='2215';
        zz='100';
        op='181';
        cl='182';
        z1='765';
        z2='265';
    case{'L'}%
        dxg='1';dxb='501';
        dyg='3580';dyb='3080';
        fyu='50';
        ydo='3035';yup='2235';
        zz='100';
        op='181';
        cl='182';
        z1='810';
        z2='310';
end
a=0;
b=0;
c=0;
switch ord
    case{'A','B','C'}
    y1='902';
    y2='372';%432-60
    level=1;
    ddx='510';
    case{'D','E','F'}
    y1='798';%y1='808';
    y2='248';
    level=1;
    ddx='510';
    case{'G','H','I'}
    y1='674'; 
    y2='124';
    level=0;
    ddx='520';
    case{'J','K','L'}
    y1='551';
    y2='1';
    level=0;
    ddx='510';
end
switch ord
    case{'A','D','G','J'}
    x1='615';%618
    x2='115';
    case{'B','E','H','K'}
    x1='0';
    x2='0';
    case{'C','F','I','L'}
    x1='115';
    x2='615';
end
fprintf(x,'%s\n','1105');
fprintf(z,'%s\n','1100');%手 1000l 1180r
status='begin'
pause(2)
fprintf(x,'%s\n',x1);%移至摄像机
fprintf(y,'%s\n',y1);
del1=0;
a=0;
b=0;
while(a==0|b==0&del1<50)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.2)
    del1=del1+1;
end
fprintf(s,'%s\n',op);
fprintf(x,'%s\n',dxg);%至物体上方
fprintf(y,'%s\n',dyg);
del1=0;
a=0;
b=0;
while(a==0|b==0&del1<50)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.2)
    del1=del1+1;
end
if yuxian==1
    fprintf(s,'%s\n','170');   
end
del1=0;
b=0;
fprintf(y,'%s\n',fyu);
while(b==0&del1<50)
    b = str2num(fgetl(y));
    pause(0.2)
    del1=del1+1;
end
if spin==1
    pause(0.5)
    fprintf(z,'%s\n','1180');
    fprintf(x,'%s\n','1130');
    pause(1.5)
end
if spin==2
    pause(0.5)
    fprintf(z,'%s\n','1020');
    fprintf(x,'%s\n','1130');
    pause(1.5)
end
fprintf(z,'%s\n',z1);
c=0;
del1=0;
while(c==0&del1<50)
    c = str2num(fgetl(z))
    pause(0.2)
    del1=del1+1
end
del1=0;
b=0;
fprintf(y,'%s\n',ydo);
while(b==0&del1<50)
    b = str2num(fgetl(y));
    pause(0.2)
    del1=del1+1;
end
status='get'
pause(1.5)
if spin==0
fprintf(s,'%s\n',zz);
else
fprintf(x,'%s\n','1120');
fprintf(x,'%s\n','1110');
fprintf(x,'%s\n','1105');
fprintf(x,'%s\n','1100');
end
if spin==2
fprintf(x,'%s\n','1120');
fprintf(x,'%s\n','1110');
fprintf(x,'%s\n','1105');
fprintf(x,'%s\n','1100');
pause(1.5)
end
del1=0;
b=0;
fprintf(y,'%s\n',yup);
while(b==0&del1<50)
    b = str2num(fgetl(y));
    pause(0.4)
    del1=del1+1;
end
fprintf(z,'%s\n',z2);
del2=0;
c=0;
while(c==0&del2<50)
    c = str2num(fgetl(z));
    pause(0.4)
    del2=del2+1;
end
if spin==1
fprintf(x,'%s\n','1105');    
fprintf(z,'%s\n','1100');
pause(1.5)
end
if spin==2
fprintf(x,'%s\n','1105');    
fprintf(z,'%s\n','1100');
pause(1.5)
end
pause(1)
fprintf(x,'%s\n',dxb);%x,y反补
fprintf(y,'%s\n',dyb);
del2=0;
a=0;
b=0;
while(a==0|b==0&del2<50)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.2)
    del2=del2+1;
end
fprintf(x,'%s\n',x2);%归位
fprintf(y,'%s\n',y2);
del2=0;
a=0;
b=0;
while(a==0|b==0&del2<50)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.2)
    del2=del2+1;
end
status='end'
fprintf(s,'%s\n',cl);
pause(1)
if j==6
fprintf(x,'%s\n','8');  
fprintf(z,'%s\n','5'); 
del2=0;
c=0;
a=0;
while(a==0|c==0&del2<50)
    c = str2num(fgetl(z));
    a = str2num(fgetl(x));
    pause(0.4)
    del2=del2+1;
end
end
end
fclose(x);
fclose(y);
fclose(z);
fclose(s);
% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
global O %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   O=contents{get(hObject,'Value')}; %% COPY
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
global X %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   X=contents{get(hObject,'Value')}; %% COPY
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
global W %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   W=contents{get(hObject,'Value')}; %% COPY
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
global V %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   V=contents{get(hObject,'Value')}; %% COPY
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
global U %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   U=contents{get(hObject,'Value')}; %% COPY
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
global T %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   T=contents{get(hObject,'Value')}; %% COPY
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
global S %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   S=contents{get(hObject,'Value')}; %% COPY
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
global R %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   R=contents{get(hObject,'Value')}; %% COPY
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
global Q %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   Q=contents{get(hObject,'Value')}; %% COPY
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
global P %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   P=contents{get(hObject,'Value')}; %% COPY
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
global N %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   N=contents{get(hObject,'Value')}; %% COPY
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
global M %% COPY
   contents = cellstr(get(hObject,'String'));%% COPY
   M=contents{get(hObject,'Value')}; %% COPY
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
