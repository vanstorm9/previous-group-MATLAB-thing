function getbin(bin)
global xbinb
global ybinb
global xbing
global ybing
global xbase
global ybase
xbinb=0;
ybinb=0;
xbing=0;
ybing=0;
switch bin
    case 1
        xbing=0;
        ybing=0;
        xbase=288;
        ybase=390;
    case 2
        xbing=618;
        ybing=0;
        xbase=185;
        ybase=390;
    case 3
        xbing=0;
        ybing=620;
        xbase=290;
        ybase=300;
end
if xbing>500
xbinb=xbing+1500;
else
xbinb=xbing+2500;
end
if ybing>500
ybinb=ybing+1500;
else
ybinb=ybing+2500;
end