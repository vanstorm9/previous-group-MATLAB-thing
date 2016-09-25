function goto(x1,y1,z1,s1)
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
x1=num2str(x1);
y1=num2str(y1);
z1=num2str(z1);
s1=num2str(s1);
fprintf(x,'%s\n',x1);
fprintf(y,'%s\n',y1);
fprintf(z,'%s\n',z1);
fprintf(s,'%s\n',s1);
fclose(x);
fclose(y);
fclose(z);
fclose(s);

