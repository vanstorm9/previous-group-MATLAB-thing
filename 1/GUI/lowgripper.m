function lowgripper()
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
pause(0.5)
movexy(xmove,ymove)
pause(0.5)
fprintf(s,'%s\n','310');
movey(550)
movez(zg)
pause(1)
movey(50)
fprintf(s,'%s\n','90');
movey(3520)
pause(0.5)
movez(zb)
movey(3020)
pause(1)
movexy(xmb,ymb)
movexy(xbinb,ybinb)
fprintf(s,'%s\n','180');
pause(1)