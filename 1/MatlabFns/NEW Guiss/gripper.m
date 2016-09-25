function gripper()
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
fprintf(z,'%s\n','1100');
movexy(xbing,ybing)
fprintf(s,'%s\n','180');
movexy(xmove,ymove)
fprintf(s,'%s\n','310');
movez(zg)
pause(1)
fprintf(s,'%s\n','90');
pause(1)
movez(zb)
movexy(xmb,ymb)
movexy(xbinb,ybinb)
fprintf(s,'%s\n','180');
pause(1)