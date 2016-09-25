function back(x1,y1,z1)
x1=num2str(x1);
y1=num2str(y1);
z1=num2str(z1);
x = serial('/dev/cu.usbmodem14131');
y = serial('/dev/cu.usbmodem1421');
z= serial('/dev/cu.usbmodem14111');
set(x,'BaudRate',9600)
set(y,'BaudRate',9600)
set(z,'BaudRate',9600)
fopen(x);
fopen(y);
fopen(z);
pause(2)
fprintf(z,'%s\n',z1);
pause(3)
fprintf(x,'%s\n',x1);
fprintf(y,'%s\n',y1);
fclose(x);
fclose(y);
fclose(z);
end
