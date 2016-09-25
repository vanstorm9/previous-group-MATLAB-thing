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
global gri
gri=num2str(gri);
fprintf(z,'%s\n','1100');
movexy(xbing,ybing)
fprintf(s,'%s\n','180');
pause(0.5)
movexy(xmove,ymove)
pause(0.5)
fprintf(s,'%s\n','310');
movez(zg)
pause(1)
fprintf(s,'%s\n',gri);
pause(1)
movez(zb)
movexy(xmb,ymb)
pause(0.5)
movexy(xbinb,ybinb)
fprintf(s,'%s\n','180');
pause(1)