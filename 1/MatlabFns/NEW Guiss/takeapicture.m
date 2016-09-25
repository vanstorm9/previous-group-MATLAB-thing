function takeapicture(a)
global s
global z
global picx
global picy
global binframe
fprintf(z,'%s\n','1100');
fprintf(s,'%s\n','340');
for k=1:a
switchbin(k)
movexy(picx,picy)
vid = videoinput('winvideo', 2, 'YUY2_1280x720');
src = getselectedsource(vid);
vid.FramesPerTrigger = 1;
vid.ReturnedColorspace = 'rgb';
src.BacklightCompensation = 'off';
src.ExposureMode = 'manual';
src.FocusMode = 'manual';
src.WhiteBalanceMode = 'manual';
triggerconfig(vid, 'manual');
vid.ROIPosition = binframe;
src.Exposure = -6;
src.Brightness = 133;
start(vid);
pause(1);
trigger(vid);
objfm = getdata(vid);
savename=['bin',num2str(k),'.mat'];
save(savename, 'objfm');
clear pictaken;
stop(vid);
src.Exposure = -8;
start(vid);
pause(1);
trigger(vid);
nowimage = getdata(vid);
savename=['bini',num2str(k),'.mat'];
save(savename, 'nowimage');
end
movexy(118,165)