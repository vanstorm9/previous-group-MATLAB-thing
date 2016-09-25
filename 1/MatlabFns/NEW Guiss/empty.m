% vid = videoinput('kinect', 1, 'RGB_1280x960');
% src = getselectedsource(vid);
% vid.FramesPerTrigger = 1;
% vid.ReturnedColorspace = 'rgb';
% triggerconfig(vid, 'manual');
% % src.FocusMode = 'manual';
% % src.WhiteBalanceMode = 'manual';
% % src.ExposureMode = 'manual';
% % src.BacklightCompensation = 'off';
% src.AutoExposure = 'off';
% 
% % % % src.AutoWhiteBalance = 'off';
% % % % vid.ROIPosition = [246 14 747 583];
% % % vid = videoinput('winvideo', 2, 'YUY2_1280x720');
% % % src = getselectedsource(vid);
% % % vid.FramesPerTrigger = 1;
% % % vid.ReturnedColorspace = 'rgb';
% % % src.BacklightCompensation = 'off';
% % % src.ExposureMode = 'manual';
% % % src.FocusMode = 'manual';
% % % src.WhiteBalanceMode = 'manual';
% % % % src.ExposureMode = 'auto';
% % % triggerconfig(vid, 'manual');
% vid = videoinput('kinect', 1, 'RGB_1280x960')
% src = getselectedsource(vid)
% vid.FramesPerTrigger = 1;
% triggerconfig(vid, 'manual');
% src.AutoExposure = 'off';
% src.AutoWhiteBalance = 'off';
% vid.ReturnedColorspace = 'rgb';
vid = videoinput('winvideo', 2, 'YUY2_1280x720');
src = getselectedsource(vid);

vid.FramesPerTrigger = 1;

vid.ReturnedColorspace = 'rgb';

src.BacklightCompensation = 'off';

src.ExposureMode = 'manual';

src.FocusMode = 'manual';

src.WhiteBalanceMode = 'manual';

triggerconfig(vid, 'manual');
% vid.ROIPosition = [333 0 628 437];
vid.ROIPosition = [322 1 607 394];%%change size
src.Exposure = -6;
% src.Exposure = -6;
src.Brightness = 133;
start(vid);
pause(1.5);
trigger(vid);
e = getdata(vid);
save('ebin3.mat', 'e');
imshow(e)
% clear e;