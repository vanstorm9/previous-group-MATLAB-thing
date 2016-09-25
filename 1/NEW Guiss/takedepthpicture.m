function takedepthpicture()
vid = videoinput('kinect', 2, 'Depth_640x480');
src2 = getselectedsource(vid);
vid.FramesPerTrigger = 1;
triggerconfig(vid, 'manual');
start(vid);
pause(1)
trigger(vid);
rd = getdata(vid);
save('rdepth.mat', 'rd');