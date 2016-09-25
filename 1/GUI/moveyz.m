function moveyz(a,b)
global y
global z
yd=num2str(a);
zd=num2str(b);
fprintf(y,'%s\n',yd);
fprintf(z,'%s\n',zd);
del1=0;
b=0;
c=0;
while(b==0|c==0&del1<50)
    b = str2num(fgetl(y));
    c = str2num(fgetl(z));
    pause(0.2)
    del1=del1+1;
end