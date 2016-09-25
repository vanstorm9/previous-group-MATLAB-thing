function movex(a)
global x
del1=0;
xd=num2str(a);
a=0;
fprintf(x,'%s\n',xd);
while(a==0&del1<50)
    a = str2num(fgetl(x));
    pause(0.2)
    del1=del1+1;
end