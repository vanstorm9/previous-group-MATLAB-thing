vid = videoinput('kinect', 1, 'RGB_1280x960');
src = getselectedsource(vid);
vid.FramesPerTrigger = 1;
vid.ReturnedColorspace = 'rgb';
triggerconfig(vid, 'manual');
% src.FocusMode = 'manual';
% src.WhiteBalanceMode = 'manual';
% src.ExposureMode = 'manual';
% src.BacklightCompensation = 'off';
src.AutoExposure = 'off';

src.AutoWhiteBalance = 'off';
% vid.ROIPosition = [246 14 747 583];
start(vid);
pause(0.7);
trigger(vid);
e1 = getdata(vid);
save('emptyb.mat', 'e1');
clear e1;