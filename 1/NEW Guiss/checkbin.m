function checkbin()
global bin
global Xbar
global xbase
global ybase
global zg
global zb
global zp
global xmove
global ymove
global xmb
global ymb
global method
global angb
global objnub
global suma
global cho
getbin(bin)
aaa=bin
load('rdepth.mat')
% findnowpic(1)
binname=['bin',num2str(bin),'.mat'];
ebinname=['ebin',num2str(bin),'.mat'];
load(binname)
load(ebinname)
wu=rgb2gray(e); 
you=rgb2gray(objfm);
wu=double(wu)/255;
you=double(you)/255;
if aaa==0
d(:,:)=abs(you(:,:)-wu(:,:));
else
d=you-wu;
end
if aaa==0
bw1=im2bw(d,0.2);
else
bw1=im2bw(d,0.05);
end
imshow(bw1)
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
imshow(bwl)
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
if suma>1
surfdetect(cho)
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
end
ylen=400-ybegin;
switch bin
    case{2,6,11}
ylen=ylen+75;        
end
xmidd=round(676-((xbegin+xlength/2)*100/600+xbase))
ymidd=round((ybegin+ylen/2)*90/425+ybase)
% xmidd=round(686-((xbegin+xlength/2)*100/600+288))
% ymidd=round((ybegin+ylength/2)*90/425+398)
xend=xbegin+xlength;
Z=rd(ymidd,xmidd)
% if (Z>1500&Z<1800)
if (Z>1600&Z<1850)
% if(Z<0)
% zg=((Z-1585)/19+9)*20+500
zg=((Z-1697)/19+9)*20+500
zb=zg-500;
else
    zg=745;
    zb=245;
end
if suma>1
choosemethod()
else
    if(ylen>50&xlength<300)
        if ((xbegin<30|xend>590)&(ylength>90))
        method=4;
        end
        method=1;
    else
        method=2;
    end
end
xend=xbegin+xlength;
yend=ybegin+ylength;
if ((xbegin<30|xend>590)&(ylength>90))
method=4;
end

status='finish cal'
status=method
switch method
case 1
    
ymove=round((ylen/2)/44*50/4+505)
if objnub==20
ymove=round((ylen/3)/44*50/4+505)
end
% ymb=ymove-500
if (ymove<500)
    ymove=535;
end
if (ymove>593)
    ymove=590;
end
if objnub==20
    ymove=565;
end
ymb=ymove+1500
if xmid>305
  xmove=round((xbegin-305+xlength/2)/44*50/5.625)
  xmb=xmove+2500;
  if xmove<0
      xmove=0;
      xmb=0;
  end
else
  xmove=round((-xbegin+305-xlength/2)/44*50/5.625+500)
  xmb=xmove+1500;
    if xmove<500
      xmove=0;
      xmb=0;
   end
end
if (bin==8&xmove>500)
    xmove=0;
    xmb=0;
end
if (ymove<533&zg>740)
lowgripper 
else
gripper
end
case 2
if (Z>1600&Z<1850)
% if(Z<0)
% zg=num2str(((Z-1585)/19+11.5)*20+500+zp)
zg=((Z-1697)/19+9)*20+500+zp*20
zb=zg-500;
else
    zg=735+zp*20;
    zb=235+zp*20;
end
ymove=round((ylen+1.5)/44*50/4+505)+40
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
   if xmove<0
      xmove=0;
      xmb=0;
  end
else
  xmove=round((-xbegin+305-xlength/2)/44*50/5.625+500)
  xmb=xmove+1500;
      if xmove<500
      xmove=0;
      xmb=0;
   end
end
if (bin==8&xmove>500)
    xmove=0;
    xmb=0;
end
vaccum
case 3
ymove=round((ylen/2)/44*50/4+505)
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
   if xmove<0
      xmove=0;
      xmb=0;
  end
else
  xmove=round((-xbegin+305-xlength/2)/44*50/5.625+500-15)
  xmb=xmove+1500;
  angb=1045;
      if xmove<500
      xmove=0;
      xmb=0;
   end
end  
if (bin==8&xmove>500)
    xmove=0;
    xmb=0;
end
superhand
case 4
ymove=round((ylen/2)/44*50/4+505)
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
  angb=1180;
   if xmove<0
      xmove=0;
      xmb=0;
  end
else
  xmove=round((-xbegin+305-xlength/2)/44*50/5.625+500-15)
  xmb=xmove+1500;
  angb=1000;
      if xmove<500
      xmove=0;
      xmb=0;
   end
end  
if (bin==8&xmove>500)
    xmove=0;
    xmb=0;
end
supervaccum
end