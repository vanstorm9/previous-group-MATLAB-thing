function superhand()
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
global angb
fprintf(s,'%s\n','181');
% pause(0.5)
angb=num2str(angb);
fprintf(z,'%s\n',angb);
% fprintf(s,'%s\n','310');
movexy(xbing,ybing)
fprintf(s,'%s\n','90');
movexy(xmove,ymove)
fprintf(s,'%s\n','330');
pause(0.5)
movez(zg)
pause(1)
fprintf(s,'%s\n','310');
fprintf(s,'%s\n','300');
fprintf(s,'%s\n','285');
movez(zb)
pause(1)
fprintf(s,'%s\n','310');
fprintf(z,'%s\n','1100');
movexy(xmb,ymb)
movexy(xbinb,ybinb)
fprintf(s,'%s\n','182');
pause(1)