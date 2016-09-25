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
set(y,'BaudRate',9600)%110
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
a=0;
 length=3;
        width=5;
        height=.75;
        gripper=0;
        black=0.05;
% % fprintf(x,'%s\n','673');
% % del1=0;
% % while (a==0&del1<100)
% %     a = str2num(fgetl(x));
% %     pause(0.5)
% %     del1=del1+1;
% % end
% for del=1:50
%     if(a==0)
%         pause(0.5);
%     end
%     a = str2num(fgetl(x));
% end
% Order(1)='H';%%del next
% name='CheezIt';%%del next

for j=1:1
ord=Order(j)
if ord=='A'
    NAME=M;
end
if ord=='B'
    NAME=N;
end
if ord=='C'
    NAME=O;
end
if ord=='D'
    NAME=P;
end
if ord=='E'
    NAME=Q;
end
if ord=='F'
    NAME=R;
end
if ord=='G'
    NAME=S;
end
if ord=='H'
    NAME=T;
end
if ord=='I'
    NAME=U;
end
if ord=='J'
    NAME=V;
end
if ord=='K'
    NAME=W;
end
if ord=='L'
    NAME=X;
end
switch NAME
    case 'Bottle Brush'%%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'CheezIt'
         length=8.5;
        width=6.25;
        height=5;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Copper plug'
         length=3.5;
        width=1;
        height=0.75;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Crayons'
         length=5.5;
        width=1;
        height=6.5;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Dental Treat' %%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Dove'
         length=3.5;
        width=2.5;
        height=1.375;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Duck Bath Toy'%%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Duck Toy'%%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Expo Eraser'%%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Frog Toy'%%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Glue'
         length=2.5;
        width=5.5;
        height=1;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Index Cards' 
        length=3;
        width=5;
        height=.75;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Joke Book'
         length=4.25;
        width=7;
        height=.325;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Small Mesh Cup'%%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Novel'
        length=.5;
        width=5.25;
        height=8;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Oreo Mega Stuff'
         length=8.5;
        width=6.25;
        height=2;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Pencil'
         length=2;
        width=.5;
        height=7.5;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Plastic Stir Sticks'%%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Self Stick Notes'
         length=3;
        width=3;
        height=1.75;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Sharpie'
         length=5.5;
        width=7;
        height=.5;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Squeakin Eggs'
         length=5.5;
        width=7;
        height=.5;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Stanley'
         length=5.5;
        width=3.25;
        height=.75;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Baby Bottle'
         length=5;
        width=6;
        height=2;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Tennis Ball'%%%%%NOT YETTT
        length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Safety Glasses'%%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Kong Dog Toy'%%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Feline Greenies'%%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'Outlet Plugs'%%%%%NOT YETTT
         length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=
    case 'SpillProof Cups' %%%%%NOT YETTT
        length=0;
        width=0;
        height=0;
        gripper=0;
        black=0.05;
        %possiblity=       
end
% document=[bino '.jpg'];
op='181';
cl='182';
a=0;
b=0;
c=0;
yd='50';
switch ord
    case{'A','B','C'}
    y1='976';
    y2='486';%432-60
    level=1;
    ddx='510';
    case{'D','E','F'}
    y1='852';%y1='808';
    y2='362';
    level=1;
    ddx='510';
    case{'G','H','I'}
    y1='734'; 
    y2='254';
    level=0;
    ddx='520';
    case{'J','K','L'}
    y1='610';
    y2='120';
    level=0;
    ddx='510';
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
%        dpc=[698 303 190 157];
       dpc=[735 368 192 152];
       dph=[377 184 96 76];
        case{'B'}
       dpc=[546 367 187 154];
       dph=[273 183 94 77];
        case{'C'}
       dpc=[352 365 191 155];
       dph=[176 183 96 77];
        case{'D'}
       dpc=[734 521 195 155];
       dph=[367 260 98 77];
        case{'E'}
       dpc=[544 522 191 153];
       dph=[272 261 95 77];
        case{'F'}
       dpc=[344 519 196 159];
       dph=[172 260 98 80];
        case{'G'}
       dpc=[750 469 198 156];
       dph=[375 234 99 78];
        case{'H'}
       dpc=[557 471 193 155];
       dph=[279 236 96 77];
        case{'I'}
       dpc=[359 470 192 156];
       dph=[179 235 96 78];
        case{'J'}
       dpc=[751 625 201 161];
       dph=[375 313 100 80];
        case{'K'}
       dpc=[552 627 198 160];
       dph=[276 313 99 80];
        case{'L'}
       dpc=[353 625 195 165];
       dph=[177 313 97 83];
end
z1=0;
z2=0;
ydown='12';
yup='2212';
fprintf(x,'%s\n','1105');
fprintf(z,'%s\n','1100');%手 1000l 1180r
status='begin'
pause(2)
fprintf(x,'%s\n',x1);%移至摄像机
fprintf(y,'%s\n',y1);
del1=0;
a=0;
b=0;
while(a==0|b==0&del1<100)
    a = str2num(fgetl(x))
    b = str2num(fgetl(y))
    pause(0.5)
    del1=del1+1;
end
% pause(4.5)
fprintf(s,'%s\n',op);
%%
% itemImage = imread(document);

%%
% level=0;
% dpc=[557 471 193 155];
% dph=[279 236 96 77];
% black=0.05;
if (level==0)
load('emptyb.mat')
load('ldp1.mat')
depthn=ld1;
depthn=imcrop(depthn,dph);
e1=imcrop(e1,dpc);
wu=rgb2gray(e1);  
load('fs1.mat')
fs1=imcrop(fs1,dpc);
you=rgb2gray(fs1);
else
load('emptyh.mat')
e1=imcrop(e1,dpc);
wu=rgb2gray(e1);     
load('tf1.mat')
tf1=imcrop(tf1,dpc);   
you=rgb2gray(tf1);
load('hdp1.mat')
depthn=hd1;
depthn=imcrop(depthn,dph);
end
wu=double(wu)/255;
you=double(you)/255;
d(:,:)=abs(you(:,:)-wu(:,:));
bw1=im2bw(d,black);
se = strel('disk',3);
bw=imerode(bw1,se);
bw=imdilate(bw,se);
[bwl,ln]=bwlabel(bw,4);
bwl_index=0;
bwl_big=0;
bwl_index2=0;
bwl_big2=0;
bwl_index3=0;
bwl_big3=0;
for m=1:ln
    tmp=sum(sum(bwl==m));
    if(tmp>bwl_big)
        bwl_big=tmp;
        bwl_index=m;
    else
        if(tmp>bwl_big2);
        bwl_big2=tmp;
        bwl_index2=m;
        else
           if(tmp>bwl_big3);
        bwl_big3=tmp;
        bwl_index3=m;
           end
        end
    end
end
%   取最大联通区域
obj=(bwl==bwl_index);
[c,r]=find(obj==1);
xbegin=min(r)
ybegin=min(c)
xlength=max(r)-xbegin
ylength=max(c)-ybegin
xend=xbegin+xlength;


obj2=(bwl==bwl_index2);
[c2,r2]=find(obj2==1);
xbegin2=min(r2);
ybegin2=min(c2);
xlength2=max(r2)-xbegin2;
ylength2=max(c2)-ybegin2;
xend2=xbegin2+xlength2;

obj3=(bwl==bwl_index3);
[c3,r3]=find(obj3==1);
xbegin3=min(r3);
ybegin3=min(c3);
xlength3=max(r3)-xbegin3;
ylength3=max(c3)-ybegin3;
xend3=xbegin3+xlength3;

% % % if (xbegin<xobject<xend)
% % % else
% % %     if(xbegin2<xobject<xend2)
% % %     else
% % %         xbegin=xbegin2;
% % %         ybegin=ybegin2;
% % %         xlength=xlength2;
% % %         ylength=ylength2;
% % %         xend=xend2;      
% % %         if(xbegin3<xobject<xend3)
% % %         xbegin=xbegin3;
% % %         ybegin=ybegin3;
% % %         xlength=xlength3;
% % %         ylength=ylength3;   
% % %         xend=xend3;    
% % %         end
% % %     end
% % % end

xmid=xbegin+xlength/2;
ymid=ybegin+ylength/2;
xmidpoint=round(xmid);
ymidpoint=round(ymid);
xmidpoint2=round(xmid/2);
ymidpoint2=round(ymid/2);
% % zpoint=0;
% % for xp=(xmidpoint2-2):(xmidpoint2+2)
% %     for yp=(ymidpoint2-2):(ymidpoint2+2)
% % zpoint=zpoint+depthn(xp,yp);%100-5''
% %     end
% % end
% zmid=zpoint/25;%150
zmid=depthn(ymidpoint2,xmidpoint2)
if (zmid<2000&&zmid>1700)
z1=num2str((round((zmid-1740)/1.68))+500);
z2=num2str(str2num(z1)-500);
else
z1='0';
z2='0';
end
dlength=abs(xlength-length);
dwidth=abs(xlength-width);
dheight=abs(xlength-height);
hlength=abs(xlength-length);
hwidth=abs(xlength-width);
hheight=abs(xlength-height);
ddd=[dlength,dwidth,dheight];
hhh=[dlength,dwidth,dheight];
dmin=min(ddd)
hmin=min(hhh)
zplus=0;
if (hmin==hlength)
   posture='A'; 
   zplus=sqrt(width^2+height^2);
end
if (hmin==hwidth)
   posture='B'; 
   zplus=sqrt(length^2+height^2);
end
if (hmin==hheight)
   posture='C'; 
   zplus=sqrt(length^2+width^2);
end

%%
if (gripper==0)
%zplus=2.5;
zplus=0;
zpluss=round(zplus*10)+165;
z1=num2str(str2num(z1)+zpluss)
z2=num2str(str2num(z2)+zpluss);
sx=xmid-96;
sy=round(ylength*0.8);
if( sy>110)
syg=num2str((sy-105)+500);
syb=num2str(str2num(syg)+2500);
else
syg=num2str(105-sy);
syb=num2str(str2num(syg)+3500);
end
% z2=num2str(str2num(z1)-500);
% sy2=num2str(str2num(sy1)+500);
% xd=str2num(sx1);
if (sx<0)
    sx=num2str(round(-sx*0.58367));
    sxb=num2str(str2num(sx)+500);
else
    sx=num2str(round((sx)*0.58367)+500);
    sxb=num2str(str2num(sx)-500);
end
end
%%
% % % if (gripper==0)
del1=0;
fprintf(x,'%s\n',sx);%至物体上方
fprintf(y,'%s\n',syg);
% pause(1.5);
% del1=0;
a=0;
b=0;
while(a==0|b==0&del1<100)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.5)
    del1=del1+1;
end
del1=0;
b=0;
% fprintf(y,'%s\n','510');
fprintf(y,'%s\n',ddx);
% pause(0.5)
while(b==0&del1<100)
    b = str2num(fgetl(y));
    pause(0.5)
    del1=del1+1;
end
%fprintf(x,'%s\n','0');
fprintf(z,'%s\n',z1);%????
%fprintf(y,'%s\n','0');
%fprintf(s,'%s\n',sb1);
c=0
% b=0;
%s=0;
del1=0;
while(c==0&del1<100)
    c = str2num(fgetl(z))
    %d = str2num(fgetl(s));
    pause(0.5)
    del1=del1+1
end
% pause(2.5)
del1=0;
b=0;
fprintf(y,'%s\n',ydown);
% pause(0.5)
while(b==0&del1<100)
    b = str2num(fgetl(y));
    pause(0.5)
    del1=del1+1;
end
status='get'
pause(2)
del1=0;
b=0;
fprintf(y,'%s\n',yup);
% pause(1)
while(b==0&del1<100)
    b = str2num(fgetl(y));
    pause(0.5)
    del1=del1+1;
end
%fprintf(x,'%s\n','0');%????
fprintf(z,'%s\n',z2);%????
%fprintf(y,'%s\n','0');
%fprintf(s,'%s\n',sb2);
del2=0;
%b=0;
c=0;
%s=0;
while(c==0&del2<100)
    c = str2num(fgetl(z));
    %d = str2num(fgetl(s));
    pause(0.5)
    del2=del2+1;
end
% pause(2.5)
fprintf(x,'%s\n',sxb);%x,y反补
fprintf(y,'%s\n',syb);
% pause(1.5)
del2=0;
a=0;
b=0;
while(a==0|b==0&del2<100)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.5)
    del2=del2+1;
end
fprintf(x,'%s\n',x2);%归位
fprintf(y,'%s\n',y2);
% pause(4.5)
del2=0;
a=0;
b=0;
while(a==0|b==0&del2<100)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.5)
    del2=del2+1;
end
status='end'
fprintf(s,'%s\n',cl);%????
pause(2)
clear you
clear wu
clear depthn
clear d
end
fclose(x);
fclose(y);
fclose(z);
fclose(s);
% clear all
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
