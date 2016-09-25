function startmotor
global x
global y
global z
global s
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