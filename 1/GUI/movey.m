function movey(a)
global y
del1=0;
yd=num2str(a);
b=0;
fprintf(y,'%s\n',yd);
while(b==0&del1<50)
    b = str2num(fgetl(y));
    pause(0.2)
    del1=del1+1;
end