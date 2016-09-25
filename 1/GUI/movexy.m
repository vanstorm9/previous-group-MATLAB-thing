function movexy(a,b)
global x
global y
xd=num2str(a);
yd=num2str(b);
fprintf(x,'%s\n',xd);
fprintf(y,'%s\n',yd);
del1=0;
a=0;
b=0;
while(a==0|b==0&del1<100)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.3)
    del1=del1+1;
end