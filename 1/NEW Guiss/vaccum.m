function vaccum()
global s
global z
global xbinb
global ybinb
global xbing
global ybing
global xmove
global ymove
global xmb
global ymb
global zg
global zb
ydown=3030;
yup=2530;
fprintf(s,'%s\n','181');
% pause(0.5)
fprintf(z,'%s\n','1100');
% fprintf(s,'%s\n','310');
movexy(xbing,ybing)
fprintf(s,'%s\n','90');
movexy(xmove,ymove)
fprintf(s,'%s\n','310');
movez(zg)
movey(ydown)
pause(1)
movey(yup)
movez(zb)
movexy(xmb,ymb)
pause(0.5)
movexy(xbinb,ybinb)
fprintf(s,'%s\n','182');
pause(1)