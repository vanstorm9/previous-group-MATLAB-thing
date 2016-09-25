function checkbin()
global bin
global Xbar
global xbase
global ybase
global zg
global zb
global xmove
global ymove
global xmb
global ymb
global method
global angb
global objnub
getbin(bin)
aaa=bin
load('rdepth.mat')
% findnowpic(1)
binname=['bin',num2str(bin),'.mat']
ebinname=['ebin',num2str(bin),'.mat']
load(binname)
load(ebinname)
wu=rgb2gray(e); 
you=rgb2gray(objfm);
wu=double(wu)/255;
you=double(you)/255;
d=you-wu;
if objnub==20
    d(:,:)=abs(you(:,:)-wu(:,:));
end
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

surfdetect(bin)

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
xmidd=round(676-((xbegin+xlength/2)*100/600+xbase))
ymidd=round((ybegin+ylength/2)*90/425+ybase)
% xmidd=round(686-((xbegin+xlength/2)*100/600+288))
% ymidd=round((ybegin+ylength/2)*90/425+398)
x
Z=rd(ymidd,xmidd)
if (Z>1500&Z<1800)
% if(Z<0)
% zg=num2str(((Z-1585)/19+11.5)*20+500)
zg=((Z-1697)/19+8)*20+500
zb=zg-500;
else
    zg=600;
    zb=100;
end
choosemethod()
xend=xbegin+xlength;
yend=ybegin+ylength;
if ((xbegin<70|xend>560)&(ylength>90)
method=4;
end
switch method
case 1
ymove=round((ylength/2)/44*50/4+505)
% ymb=ymove-500
if (ymove<533)
    ymove=535;
end
if (ymove>593)
    ymove=590;
end
ymb=ymove+1500
if xmid>305
  xmove=round((xbegin-305+xlength/2)/44*50/5.625)
  xmb=xmove+2500;
else
  xmove=round((-xbegin+305-xlength/2)/44*50/5.625+500)
  xmb=xmove+1500;
end

gripper
case 2
ymove=round((ylength+1)/44*50/4+505)+15
if (ymove<533)
    ymove=535;
end
if (ymove>593)
    ymove=590;
end
ymb=ymove+1500
if xmid>305
  xmove=round((xbegin-305+xlength/2)/44*50/5.625)
  xmb=xmove+2500;
else
  xmove=round((-xbegin+305-xlength/2)/44*50/5.625+500)
  xmb=xmove+1500;
end
vaccum
case 3
ymove=round((ylength/2)/44*50/4+505)
if (ymove<533)
    ymove=535;
end
if (ymove>593)
    ymove=590;
end
ymb=ymove+1500
if xmid>305
  xmove=round((xbegin-305+xlength/2)/44*50/5.625-15)
  xmb=xmove+2500;
  angb=1135;
else
  xmove=round((-xbegin+305-xlength/2)/44*50/5.625+500-15)
  xmb=xmove+1500;
  angb=1045;
end  
superhand
case 4
ymove=round((ylength/2)/44*50/4+505)
if (ymove<533)
    ymove=535;
end
if (ymove>593)
    ymove=590;
end
ymb=ymove+1500
if xmid>305
  xmove=round((xbegin-305+xlength/2)/44*50/5.625-30)
  xmb=xmove+2500;
  angb=1180;
else
  xmove=round((-xbegin+305-xlength/2)/44*50/5.625+500-30)
  xmb=xmove+1500;
  angb=1000;
end  
supervaccum
end