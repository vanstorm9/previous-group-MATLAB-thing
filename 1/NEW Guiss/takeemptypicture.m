function takeemptypicture(a)
global s
global z
global picx
global picy
global binframe
fprintf(z,'%s\n','1100');
fprintf(s,'%s\n','340');
for k=1:a
switchabin(k)
movexy(picx,picy)
pause(2)
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
e = getdata(vid);
savename=['ebin',num2str(k),'.mat'];
save(savename, 'e');
clear e;
stop(vid);
end
movexy(777,45)