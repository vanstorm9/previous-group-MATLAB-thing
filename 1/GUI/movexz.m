function movexz(a,b)
global x
global z
xd=num2str(a);
zd=num2str(b);
fprintf(x,'%s\n',xd);
fprintf(z,'%s\n',zd);
del1=0;
a=0;
c=0;
while(a==0|c==0&del1<50)
    a = str2num(fgetl(x));
    c = str2num(fgetl(z));
    pause(0.2)
    del1=del1+1;
end