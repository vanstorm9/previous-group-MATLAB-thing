
function varargout = Gui1(varargin)

% GUI1 MATLAB code for Gui1.fig
%      GUI1, by itself, creates a new GUI1 or raises the existing
%      singleton*.
%
%      H = GUI1 returns the handle to a new GUI1 or the handle to
%      the existing singleton*.
%
%      GUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI1.M with the given input arguments.
%
%      GUI1('Property','Value',...) creates a new GUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gui1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gui1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gui1

% Last Modified by GUIDE v2.5 09-Nov-2015 20:10:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gui1_OpeningFcn, ...
                   'gui_OutputFcn',  @Gui1_OutputFcn, ...
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


% --- Executes just before Gui1 is made visible.
function Gui1_OpeningFcn(hObject, eventdata, handles, varargin)
global popValA1
global popValA2
global popValA3
global popValB1
global popValB2
global popValB3
global popValC1
global popValC2
global popValC3
global popValD1
global popValD2
global popValD3
global popValE1
global popValE2
global popValE3
global popValF1
global popValF2
global popValF3
global popValG1
global popValG2
global popValG3
global popValH1
global popValH2
global popValH3
global popValI1
global popValI2
global popValI3
global popValJ1
global popValJ2
global popValJ3
global popValK1
global popValK2
global popValK3
global popValL1
global popValL2
global popValL3
popValA1=0;
popValA2=0;
popValA3=0;
popValB1=0;
popValB2=0;
popValB3=0;
popValC1=0;
popValC2=0;
popValC3=0;
popValD1=0;
popValD2=0;
popValD3=0;
popValE1=0;
popValE2=0;
popValE3=0;
popValF1=0;
popValF2=0;
popValF3=0;
popValG1=0;
popValG2=0;
popValG3=0;
popValH1=0;
popValH2=0;
popValH3=0;
popValI1=0;
popValI2=0;
popValI3=0;
popValJ1=0;
popValJ2=0;
popValJ3=0;
popValK1=0;
popValK2=0;
popValK3=0;
popValL1=0;
popValL2=0;
popValL3=0;
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gui1 (see VARARGIN)

% Choose default command line output for Gui1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Gui1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Gui1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
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

global popValA1
global popValA2
global popValA3
global popValB1
global popValB2
global popValB3
global popValC1
global popValC2
global popValC3
global popValD1
global popValD2
global popValD3
global popValE1
global popValE2
global popValE3
global popValF1
global popValF2
global popValF3
global popValG1
global popValG2
global popValG3
global popValH1
global popValH2
global popValH3
global popValI1
global popValI2
global popValI3
global popValJ1
global popValJ2
global popValJ3
global popValK1
global popValK2
global popValK3
global popValL1
global popValL2
global popValL3

global bins
global contents

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=popValA1+popValA2+popValA3;
B=popValB1+popValB2+popValB3;
C=popValC1+popValC2+popValC3;
D=popValD1+popValD2+popValD3;
E=popValE1+popValE2+popValE3;
F=popValF1+popValF2+popValF3;
G=popValG1+popValG2+popValG3;
H=popValH1+popValH2+popValH3;
I=popValI1+popValI2+popValI3;
J=popValJ1+popValJ2+popValJ3;
K=popValK1+popValK2+popValK3;
L=popValL1+popValL2+popValL3;

%bins=['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K']
%contents=[A B C D E F G H I J K L]

%assignin('base','BINA',A)
%set(handles.pushbutton1,'userdata',A)
% % % vid = videoinput('kinect', 1, 'RGB_1280x960');
% % % src = getselectedsource(vid);
% % % vid.FramesPerTrigger = 1;
% % % vid.ReturnedColorspace = 'rgb';
% % % triggerconfig(vid, 'manual');
% % % src.AutoExposure = 'off';
% % % src.AutoWhiteBalance = 'off';
% % % start(vid);
% % % pause(0.6);
% % % trigger(vid);
% % % fs1 = getdata(vid);
% % % save('fs1.mat', 'fs1');
% % % vid = videoinput('kinect', 2, 'Depth_640x480');
% % % src = getselectedsource(vid);
% % % vid.FramesPerTrigger = 1;
% % % vid.ReturnedColorspace = 'grayscale';
% % % triggerconfig(vid, 'manual');
% % % start(vid);
% % % pause(0.6);
% % % trigger(vid);
% % % ld1 = getdata(vid);
% % % save('ldp1.mat', 'ld1');
% % % s= serial('COM4');
% % % set(s,'BaudRate',9600)
% % % fopen(s);
% % % pause(3)
% % % fprintf(s,'%s\n','183');
% % % d=0;
% % % del1=0;
% % % pause(40);
% % % vid = videoinput('kinect', 1, 'RGB_1280x960');
% % % src = getselectedsource(vid);
% % % vid.FramesPerTrigger = 1;
% % % vid.ReturnedColorspace = 'rgb';
% % % triggerconfig(vid, 'manual');
% % % src.AutoExposure = 'off';
% % % src.AutoWhiteBalance = 'off';
% % % start(vid);
% % % pause(0.6);
% % % trigger(vid);
% % % tf1 = getdata(vid);
% % % save('tf1.mat', 'tf1');
% % % vid = videoinput('kinect', 2, 'Depth_640x480');
% % % src = getselectedsource(vid);
% % % vid.FramesPerTrigger = 1;
% % % vid.ReturnedColorspace = 'grayscale';
% % % triggerconfig(vid, 'manual');
% % % start(vid);
% % % pause(0.6);
% % % trigger(vid);
% % % hd1 = getdata(vid);
% % % save('hdp1.mat', 'hd1');
% % % fclose(s);
GUI2;
% function cal(a,b,c)


% x=x+a;
% y=y+b;
% z=z+c;
% s=x+y+z;

% --- Executes on selection change in popupmenu34.
function popupmenu34_Callback(hObject, eventdata, handles)
global popValL1;
contents = cellstr(get(hObject,'String'));
popupmenu34=contents{get(hObject,'Value')};
if (strcmp(popupmenu34,'None'))
    popValL1=0;
else
    popValL1=1;
end
%give(popValL1)

%assignin('base','popValL1',popValL1)


% hObject    handle to popupmenu34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu34 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu34


% --- Executes during object creation, after setting all properties.
function popupmenu34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu35.
function popupmenu35_Callback(hObject, eventdata, handles)
global popValL2
contents = cellstr(get(hObject,'String'));
popupmenu35=contents{get(hObject,'Value')};
if (strcmp(popupmenu35,'None'))
    popValL2=0;
else
    popValL2=1;
end 
assignin('base','popValL2',popValL2)
% hObject    handle to popupmenu35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu35 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu35


% --- Executes during object creation, after setting all properties.
function popupmenu35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu36.
function popupmenu36_Callback(hObject, eventdata, handles)
global popValL3
contents = cellstr(get(hObject,'String'));
popupmenu36=contents{get(hObject,'Value')};
if (strcmp(popupmenu36,'None'))
    popValL3=0;
else
    popValL3=1;
end 
assignin('base','popValL3',popValL3)
% hObject    handle to popupmenu36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu36 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu36


% --- Executes during object creation, after setting all properties.
function popupmenu36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu31.
function popupmenu31_Callback(hObject, eventdata, handles)
global popValK1
contents = cellstr(get(hObject,'String'));
popupmenu31=contents{get(hObject,'Value')};
if (strcmp(popupmenu31,'None'))
    popValK1=0;
else
    popValK1=1;
end 
assignin('base','popValK1',popValK1)
% hObject    handle to popupmenu31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu31 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu31


% --- Executes during object creation, after setting all properties.
function popupmenu31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu32.
function popupmenu32_Callback(hObject, eventdata, handles)
global popValK2
contents = cellstr(get(hObject,'String'));
popupmenu32=contents{get(hObject,'Value')};
if (strcmp(popupmenu32,'None'))
    popValK2=0;
else
    popValK2=1;
end 
assignin('base','popValK2',popValK2)
% hObject    handle to popupmenu32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu32 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu32


% --- Executes during object creation, after setting all properties.
function popupmenu32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu33.
function popupmenu33_Callback(hObject, eventdata, handles)
global popValK3
contents = cellstr(get(hObject,'String'));
popupmenu33=contents{get(hObject,'Value')};
if (strcmp(popupmenu33,'None'))
    popValK3=0;
else
    popValK3=1;
end 
assignin('base','popValK3',popValK3)
% hObject    handle to popupmenu33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu33 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu33


% --- Executes during object creation, after setting all properties.
function popupmenu33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu28.
function popupmenu28_Callback(hObject, eventdata, handles)
global popValJ1
contents = cellstr(get(hObject,'String'));
popupmenu28=contents{get(hObject,'Value')};
if (strcmp(popupmenu28,'None'))
    popValJ1=0;
else
    popValJ1=1;
end 
assignin('base','popValJ1',popValJ1)
% hObject    handle to popupmenu28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu28 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu28


% --- Executes during object creation, after setting all properties.
function popupmenu28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu29.
function popupmenu29_Callback(hObject, eventdata, handles)
global popValJ2
contents = cellstr(get(hObject,'String'));
popupmenu29=contents{get(hObject,'Value')};
if (strcmp(popupmenu29,'None'))
    popValJ2=0;
else
    popValJ2=1;
end 
assignin('base','popValJ2',popValJ2)
% hObject    handle to popupmenu29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu29 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu29


% --- Executes during object creation, after setting all properties.
function popupmenu29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu30.
function popupmenu30_Callback(hObject, eventdata, handles)
global popValJ3
contents = cellstr(get(hObject,'String'));
popupmenu30=contents{get(hObject,'Value')};
if (strcmp(popupmenu30,'None'))
    popValJ3=0;
else
    popValJ3=1;
end 
assignin('base','popValJ3',popValJ3)
% hObject    handle to popupmenu30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu30 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu30


% --- Executes during object creation, after setting all properties.
function popupmenu30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu25.
function popupmenu25_Callback(hObject, eventdata, handles)
global popValI1
contents = cellstr(get(hObject,'String'));
popupmenu25=contents{get(hObject,'Value')};
if (strcmp(popupmenu25,'None'))
    popValI1=0;
else
    popValI1=1;
end 

% hObject    handle to popupmenu25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu25 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu25


% --- Executes during object creation, after setting all properties.
function popupmenu25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu26.
function popupmenu26_Callback(hObject, eventdata, handles)
global popValI2
contents = cellstr(get(hObject,'String'));
popupmenu26=contents{get(hObject,'Value')};
if (strcmp(popupmenu26,'None'))
    popValI2=0;
else
    popValI2=1;
end 
assignin('base','popValI2',popValI2)
% hObject    handle to popupmenu26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu26 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu26


% --- Executes during object creation, after setting all properties.
function popupmenu26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu27.
function popupmenu27_Callback(hObject, eventdata, handles)
global popValI3
contents = cellstr(get(hObject,'String'));
popupmenu27=contents{get(hObject,'Value')};
if (strcmp(popupmenu27,'None'))
    popValI3=0;
else
    popValI3=1;
end 
assignin('base','popValI3',popValI3)
% hObject    handle to popupmenu27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu27 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu27


% --- Executes during object creation, after setting all properties.
function popupmenu27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu22.
function popupmenu22_Callback(hObject, eventdata, handles)
global popValH1
contents = cellstr(get(hObject,'String'));
popupmenu22=contents{get(hObject,'Value')};
if (strcmp(popupmenu22,'None'))
    popValH1=0;
else
    popValH1=1;
end 
assignin('base','popValH1',popValH1)
% hObject    handle to popupmenu22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu22 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu22


% --- Executes during object creation, after setting all properties.
function popupmenu22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu23.
function popupmenu23_Callback(hObject, eventdata, handles)
global popValH2
contents = cellstr(get(hObject,'String'));
popupmenu23=contents{get(hObject,'Value')};
if (strcmp(popupmenu23,'None'))
    popValH2=0;
else
    popValH2=1;
end 
assignin('base','popValH2',popValH2)
% hObject    handle to popupmenu23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu23 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu23


% --- Executes during object creation, after setting all properties.
function popupmenu23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu24.
function popupmenu24_Callback(hObject, eventdata, handles)
global popValH3
contents = cellstr(get(hObject,'String'));
popupmenu24=contents{get(hObject,'Value')};
if (strcmp(popupmenu24,'None'))
    popValH3=0;
else
    popValH3=1;
end 
assignin('base','popValH3',popValH3)
% hObject    handle to popupmenu24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu24 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu24


% --- Executes during object creation, after setting all properties.
function popupmenu24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu19.
function popupmenu19_Callback(hObject, eventdata, handles)
global popValG1
contents = cellstr(get(hObject,'String'));
popupmen19=contents{get(hObject,'Value')};
if (strcmp(popupmen19,'None'))
    popValG1=0;
else
    popValG1=1;
end 
assignin('base','popValG1',popValG1)
% hObject    handle to popupmenu19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu19 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu19


% --- Executes during object creation, after setting all properties.
function popupmenu19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu20.
function popupmenu20_Callback(hObject, eventdata, handles)
global popValG2
contents = cellstr(get(hObject,'String'));
popupmenu20=contents{get(hObject,'Value')};
if (strcmp(popupmenu20,'None'))
    popValG2=0;
else
    popValG2=1;
end 
assignin('base','popValG2',popValG2)
% hObject    handle to popupmenu20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu20 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu20


% --- Executes during object creation, after setting all properties.
function popupmenu20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu21.
function popupmenu21_Callback(hObject, eventdata, handles)
global popValG3
contents = cellstr(get(hObject,'String'));
popupmenu21=contents{get(hObject,'Value')};
if (strcmp(popupmenu21,'None'))
    popValG3=0;
else
    popValG3=1;
end 
assignin('base','popValG3',popValG3)
% hObject    handle to popupmenu21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu21 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu21


% --- Executes during object creation, after setting all properties.
function popupmenu21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu16.
function popupmenu16_Callback(hObject, eventdata, handles)
global popValF1
contents = cellstr(get(hObject,'String'));
popupmenu16=contents{get(hObject,'Value')};
if (strcmp(popupmenu16,'None'))
    popValF1=0;
else
    popValF1=1;
end 
assignin('base','popValF1',popValF1)
% hObject    handle to popupmenu16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu16 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu16


% --- Executes during object creation, after setting all properties.
function popupmenu16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu17.
function popupmenu17_Callback(hObject, eventdata, handles)
global popValF2
contents = cellstr(get(hObject,'String'));
popupmenu17=contents{get(hObject,'Value')};
if (strcmp(popupmenu17,'None'))
    popValF2=0;
else
    popValF2=1;
end 
assignin('base','popValF2',popValF2)
% hObject    handle to popupmenu17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu17 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu17


% --- Executes during object creation, after setting all properties.
function popupmenu17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu18.
function popupmenu18_Callback(hObject, eventdata, handles)
global popValF3
contents = cellstr(get(hObject,'String'));
popupmenu18=contents{get(hObject,'Value')};
if (strcmp(popupmenu18,'None'))
    popValF3=0;
else
    popValF3=1;
end 
assignin('base','popValF3',popValF3)
% hObject    handle to popupmenu18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu18 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu18


% --- Executes during object creation, after setting all properties.
function popupmenu18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu13.
function popupmenu13_Callback(hObject, eventdata, handles)
global popValE1
contents = cellstr(get(hObject,'String'));
popupmenu13=contents{get(hObject,'Value')};
if (strcmp(popupmenu13,'None'))
    popValE1=0;
else
    popValE1=1;
end 
assignin('base','popValE1',popValE1)
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


% --- Executes on selection change in popupmenu14.
function popupmenu14_Callback(hObject, eventdata, handles)
global popValE2
contents = cellstr(get(hObject,'String'));
popupmenu14=contents{get(hObject,'Value')};
if (strcmp(popupmenu14,'None'))
    popValE2=0;
else
    popValE2=1;
end 
assignin('base','popValE2',popValE2)
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu14 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu14


% --- Executes during object creation, after setting all properties.
function popupmenu14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu15.
function popupmenu15_Callback(hObject, eventdata, handles)
global popValE3
contents = cellstr(get(hObject,'String'));
popupmenu15=contents{get(hObject,'Value')};
if (strcmp(popupmenu15,'None'))
    popValE3=0;
else
    popValE3=1;
end 
assignin('base','popValE3',popValE3)
% hObject    handle to popupmenu15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu15 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu15


% --- Executes during object creation, after setting all properties.
function popupmenu15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
global popValD1
contents = cellstr(get(hObject,'String'));
popupmenu10=contents{get(hObject,'Value')};
if (strcmp(popupmenu10,'None'))
    popValD1=0;
else
    popValD1=1;
end 
assignin('base','popValD1',popValD1)
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


% --- Executes on selection change in popupmenu11.
function popupmenu11_Callback(hObject, eventdata, handles)
global popValD2
contents = cellstr(get(hObject,'String'));
popupmenu11=contents{get(hObject,'Value')};
if (strcmp(popupmenu11,'None'))
    popValD2=0;
else
    popValD2=1;
end 
assignin('base','popValD2',popValD2)
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


% --- Executes on selection change in popupmenu12.
function popupmenu12_Callback(hObject, eventdata, handles)
global popValD3
contents = cellstr(get(hObject,'String'));
popupmenu12=contents{get(hObject,'Value')};
if (strcmp(popupmenu12,'None'))
    popValD3=0;
else
    popValD3=1;
end 
assignin('base','popValD3',popValD3)
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


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
global popValC1
contents = cellstr(get(hObject,'String'));
popupmenu7=contents{get(hObject,'Value')};
if (strcmp(popupmenu7,'None'))
    popValC1=0;
else
    popValC1=1;
end 
assignin('base','popValC1',popValC1)
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


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
global popValC2
contents = cellstr(get(hObject,'String'));
popupmenu8=contents{get(hObject,'Value')};
if (strcmp(popupmenu8,'None'))
    popValC2=0;
else
    popValC2=1;
end 
assignin('base','popValC2',popValC2)
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


% --- Executes on selection change in popupmenu9.

function popupmenu9_Callback(hObject, eventdata, handles)
global popValC3
contents = cellstr(get(hObject,'String'));
popupmenu9=contents{get(hObject,'Value')};
if (strcmp(popupmenu9,'None'))
    popValC3=0;
else
    popValC3=1;
end 
assignin('base','popValC3',popValC3)
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


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
global popValB3
contents = cellstr(get(hObject,'String'));
popupmenu6=contents{get(hObject,'Value')};
if (strcmp(popupmenu6,'None'))
    popValB3=0;
else
    popValB3=1;
end 
%assignin('base','popValB3',popValB3)
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
global popValB2
contents = cellstr(get(hObject,'String'));
popupmenu5=contents{get(hObject,'Value')};
if (strcmp(popupmenu5,'None'))
    popValB2=0;
else
    popValB2=1;
end 
%assignin('base','popValB2',popValB2)
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


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
global popValB1
contents = cellstr(get(hObject,'String'));
popupmenu4=contents{get(hObject,'Value')};
if (strcmp(popupmenu4,'None'))
    popValB1=0;
else
    popValB1=1;
end 
%assignin('base','popValB1',popValB1)
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


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
global popValA1
contents = cellstr(get(hObject,'String'));
popupmenu1=contents{get(hObject,'Value')};
if (strcmp(popupmenu1,'None'))
    popValA1=0;
else
    popValA1=1;
end 
%assignin('base','popValA1',popValA1)




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


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
global popValA2
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
contents = cellstr(get(hObject,'String'));
popupmenu2=contents{get(hObject,'Value')};
if (strcmp(popupmenu2,'None'))
    popValA2=0;
else
    popValA2=1;
end 

%assignin('base','popValA2',popValA2)



% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)

% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
 
end



% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
global popValA3
contents = cellstr(get(hObject,'String'));
popupmenu3=contents{get(hObject,'Value')};
if (strcmp(popupmenu3,'None'))
    popValA3=0;
else
    popValA3=1;
end
%assignin('base','popValA3',popValA3)

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


% --- Executes on selection change in popupmenu37.
function popupmenu37_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu37 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu37


% --- Executes during object creation, after setting all properties.
function popupmenu37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
