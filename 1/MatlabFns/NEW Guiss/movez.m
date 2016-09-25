function movez(a)
global z
del1=0;
zd=num2str(a);
c=0;
fprintf(z,'%s\n',zd);
while(c==0&del1<50)
    c = str2num(fgetl(z));
    pause(0.2)
    del1=del1+1;
end