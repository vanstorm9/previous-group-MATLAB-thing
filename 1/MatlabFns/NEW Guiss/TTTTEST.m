function checkbin()
global imgn
global Xbar
global x
global y
global z
global s
load('rdepth.mat')
takeapicture
findnowpic(1)
load('r5.mat')
load('emt.mat')
wu=rgb2gray(e); 
you=rgb2gray(n);
wu=double(wu)/255;
you=double(you)/255;
d=you-wu;
bw1=im2bw(d,0.05);
se = strel('disk',3);
bw=imerode(bw1,se);
bw=imdilate(bw,se);
[bwl,ln]=bwlabel(bw,4);
bwl_index=0;
bwl_big=0;
bwl_index2=0;
bwl_big2=0;
bwl_index3=0;
bwl_big3=0;
for m=1:ln
    tmp=sum(sum(bwl==m));
    if(tmp>bwl_big)
        bwl_big=tmp;
        bwl_index=m;
    end
end
index2=0;
for m=1:ln
    tmp=sum(sum(bwl==m));
    if(tmp>bwl_big2&tmp<bwl_big&index2==0)
        bwl_big2=tmp;
        bwl_index2=m;
    end
    if(tmp==bwl_big&m~=bwl_index)
       bwl_big2=tmp;
       bwl_index2=m;
       index2=1;
    end
end
index3=0;
for m=1:ln
    tmp=sum(sum(bwl==m));
    if(tmp>bwl_big3&tmp<bwl_big2&index3==0)
        bwl_big3=tmp;
        bwl_index3=m;
    end
    if(tmp==bwl_big2&m~=bwl_index2)
       bwl_big3=tmp;
       bwl_index3=m;
       index3=1;
    end
end
obj=(bwl==bwl_index);
[c,r]=find(obj==1);
xbegin=min(r);
ybegin=min(c);
xlength=max(r)-xbegin;
ylength=max(c)-ybegin;
xmid=xbegin+xlength/2;

obj2=(bwl==bwl_index2);
[c2,r2]=find(obj2==1);
xbegin2=min(r2);
ybegin2=min(c2);
xlength2=max(r2)-xbegin2;
ylength2=max(c2)-ybegin2;
xmid2=xbegin2+xlength2/2;

obj3=(bwl==bwl_index3);
[c3,r3]=find(obj3==1);
xbegin3=min(r3);
ybegin3=min(c3);
xlength3=max(r3)-xbegin3;
ylength3=max(c3)-ybegin3;
xmid3=xbegin3+xlength3/2;
surfdetect(2)%%%%
xdif=abs(Xbar-xmid);
xdif2=abs(Xbar-xmid2);
xdif3=abs(Xbar-xmid3);
xdiff=[xdif xdif2 xdif3];
if (xdif==min(xdiff))
    obj=1
end
if (xdif2==min(xdiff))
        xbegin=xbegin2;
        ybegin=ybegin2;
        xlength=xlength2;
        ylength=ylength2;
        xmid=xmid2;
         obj=2
end
if (xdif3==min(xdiff))
        xbegin=xbegin3;
        ybegin=ybegin3;
        xlength=xlength3;
        ylength=ylength3;
        xmid=xmid3;
         obj=3
end
xmidd=round(676-((xbegin+xlength/2)*100/600+288))
ymidd=round((ybegin+ylength/2)*90/425+390)
% xmidd=round(686-((xbegin+xlength/2)*100/600+288))
% ymidd=round((ybegin+ylength/2)*90/425+398)

Z=rd(ymidd,xmidd)
if (Z>1500&Z<1800)
% zg=num2str(((Z-1585)/19+11.5)*20+500)
zg=num2str(((Z-1697)/19+8)*20+500)
zb=num2str(str2num(zg)-500);
else
    zg='600';
    zb='100';
end
%%
del1=0;
b=0;
fprintf(y,'%s\n','45');
fprintf(s,'%s\n','180');
while(b==0&del1<50)
    b = str2num(fgetl(y));
    pause(0.2)
    del1=del1+1;
end
ymove=num2str((ylength/2)/44*50/4+505)
ymb=num2str(str2num(ymove)-500)
if xmid>305
  xmove=num2str((xbegin-305+xlength/2)/44*50/5.625)
  xmb=num2str(str2num(xmove)+500)
else
  xmove=num2str((-xbegin+305-xlength/2)/44*50/5.625+500)
% xmove=num2str((xbegin+xlength/2)/44*50/5.6+500)
  xmb=num2str(str2num(xmove)-500)
end
fprintf(x,'%s\n',xmove);
fprintf(y,'%s\n',ymove);
fprintf(s,'%s\n','310');
del1=0;
a=0;
b=0;
while(a==0|b==0&del1<50)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.2)
    del1=del1+1;
end
fprintf(z,'%s\n',zg);
c=0;
del1=0;
while(c==0&del1<50)
    c = str2num(fgetl(z))
    pause(0.2)
    del1=del1+1
end
fprintf(s,'%s\n','90');
pause(5)
fprintf(z,'%s\n',zb);
c=0;
del1=0;
while(c==0&del1<50)
    c = str2num(fgetl(z))
    pause(0.2)
    del1=del1+1
end
fprintf(x,'%s\n',xmb);
fprintf(y,'%s\n',ymb);
del1=0;
a=0;
b=0;
while(a==0|b==0&del1<50)
    a = str2num(fgetl(x));
    b = str2num(fgetl(y));
    pause(0.2)
    del1=del1+1;
end
fprintf(s,'%s\n','180');
fprintf(x,'%s\n','664');
fclose(s);
fclose(x);
fclose(y);
fclose(z);