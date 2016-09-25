function movexyz(a,b,c)
global x
global y
global z
xd=num2str(a);
yd=num2str(b);
zd=num2str(c);
fprintf(x,'%s\n',xd);
fprintf(y,'%s\n',yd);
fprintf(z,'%s\n',zd);
del1=0;
a=0;
b=0;
c=0;
while(a==0|b==0|c==0&del1<50)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    c = str2num(fgetl(z));
    pause(0.2)
    del1=del1+1;
end