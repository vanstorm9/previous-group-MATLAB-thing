% vid = videoinput('kinect', 1, 'RGB_1280x960');
% src = getselectedsource(vid);
% vid.FramesPerTrigger = 1;
% vid.ReturnedColorspace = 'rgb';
% triggerconfig(vid, 'manual');
% % src.FocusMode = 'manual';
% % src.WhiteBalanceMode = 'manual';
% % src.ExposureMode = 'manual';
% % src.BacklightCompensation = 'off';
% 
% vid.ROIPosition = [559 307 191 166];
% src.AutoExposure = 'off';
% 
% src.AutoWhiteBalance = 'off';
% start(vid);
% pause(1);
% trigger(vid);
% sceneImage1 = getdata(vid);
% % % a=[742 774 201 165];
load('ebin2.mat')
load('bin2.mat')
% e=imcrop(e,[301 173 126 96]);%-1-1
% en=imcrop(en,[301 173 126 96]);%-1-1
wu=rgb2gray(e);     
% wu=e;
% you=en;
% % % f1=imcrop(f1,[742 774 201 165]);%-1-1
% you=rgb2gray(sceneImage1); 
you=rgb2gray(objfm);
wu=double(wu)/255;
you=double(you)/255;
d=you-wu;
% d(:,:)=abs(you(:,:)-wu(:,:));
bw1=im2bw(d,0.05);%bypeople
%level=graythresh(d);%auto
%bw1=im2bw(d,level);
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
        
% bwl_index4=0;
% bwl_big4=0;
% % for m=1:ln
% %     tmp=sum(sum(bwl==m));
% %     if(tmp>bwl_big)
% %         if(bwl_big==0)
% %         bwl_big=tmp;
% %         bwl_index=m;
% %     else
% %         if(bwl_big2==0)
% %         bwl_big2=bwl_big;
% %         bwl_index2=bwl_index;
% %         bwl_big=tmp;
% %         bwl_index=m;
% %         else
% %          bwl_big3=bwl_big2;
% %          bwl_index3=bwl_index2;
% %          bwl_big2=bwl_big;
% %          bwl_index2=bwl_index;
% %          bwl_big=tmp;
% %          bwl_index=m;
% %         end
% % %                 if(tmp>bwl_big4);
% % %                 bwl_big4=tmp;
% % %                 bwl_index4=m;
% %            
% % %            end
% %         end
% %     end
% % end
%   取最大联通区域
obj=(bwl==bwl_index);
[c,r]=find(obj==1);
xbegin=min(r)
ybegin=min(c)
xlength=max(r)-xbegin
ylength=max(c)-ybegin

obj2=(bwl==bwl_index2);
[c2,r2]=find(obj2==1);
xbegin2=min(r2);
ybegin2=min(c2);
xlength2=max(r2)-xbegin2;
ylength2=max(c2)-ybegin2;

obj3=(bwl==bwl_index3);
[c3,r3]=find(obj3==1);
xbegin3=min(r3);
ybegin3=min(c3);
xlength3=max(r3)-xbegin3;
ylength3=max(c3)-ybegin3;
% 
% obj4=(bwl==bwl_index4);
% [c4,r4]=find(obj4==1);
% xbegin4=min(r4);
% ybegin4=min(c4);
% xlength4=max(r4)-xbegin4;
% ylength4=max(c4)-ybegin4;
%   绘图
im1=wu;        %lab1='原图';
im2=you;       %lab2='放入物品';
%   对比度增强后显示
im3=imadjust(d,[0,0.2],[0,1]);
%lab3='图片差';
im4=bw1;        %lab4='阈值处理';
% im4=bw;        lab4='阈值处理';
im5=bw;         %lab5='闭操作';
im6=obj3;        %lab6='识别';

subplot(231);imshow(im1);%title(lab1);
subplot(232);imshow(im2);%title(lab2);
subplot(233);imshow(im3);%title(lab3);
subplot(234);imshow(im4);%title(lab4);
subplot(235);imshow(im5);%title(lab5);
subplot(236);imshow(im6);%title(lab6);
%   标记物品
subplot(232);
hold on
plot(xbegin+xlength/2,ybegin+ylength/2,'*r');
plot(xbegin2+xlength2/2,ybegin2+ylength2/2,'*r');
plot(xbegin3+xlength3/2,ybegin3+ylength3/2,'*r');
% plot(xbegin4+xlength4/2,ybegin4+ylength4/2,'*r');
rectangle('Position',[xbegin,ybegin,xlength,ylength],'EdgeColor','r');
rectangle('Position',[xbegin2,ybegin2,xlength2,ylength2],'EdgeColor','g');
rectangle('Position',[xbegin3,ybegin3,xlength3,ylength3],'EdgeColor','b');
% rectangle('Position',[xbegin4,ybegin4,xlength4,ylength4],'EdgeColor','w');
hold off
