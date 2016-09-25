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
        xbing=618;
        ybing=0;
        xbase=185;
        ybase=380;
    case 2
        xbing=618;
        ybing=620;
        xbase=181;
        ybase=300;
    case 3
        xbing=618;
        ybing=745;
        xbase=183;
        ybase=215;
    case 4
        xbing=618;
        ybing=870;
        xbase=183;
        ybase=125;
    case 5
        xbing=0;
        ybing=0;
        xbase=288;
        ybase=380;
    case 6
        xbing=0;
        ybing=620;
        xbase=293;
        ybase=297;
    case 7
        xbing=0;
        ybing=745;
        xbase=293;
        ybase=212;
    case 8
        xbing=0;
        ybing=870;
        xbase=295;
        ybase=136;
    case 9
        xbing=113;
        ybing=870;
        xbase=400;
        ybase=138;
    case 10
        xbing=113;
        ybing=745;
        xbase=400;
        ybase=213;
    case 11
        xbing=113;
        ybing=620;
        xbase=400;
        ybase=293;
    case 12
        xbing=113;
        ybing=0;
        xbase=400;
        ybase=380;
end
if xbing>500
xbinb=xbing+2500;
else
xbinb=xbing+3500;
end
if ybing>500
ybinb=ybing+2500;
else
ybinb=ybing+3500;
end