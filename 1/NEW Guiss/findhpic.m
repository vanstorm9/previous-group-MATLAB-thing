function findhpic(a,b)
global objhpic
global objnub
objnub=a;
switch a
    case 1
        picname=['glueA',num2str(b),'.jpg'];
        objhpic=imread(picname);
    case 3
        picname=['jokeA',num2str(b),'.jpg'];
        objhpic=imread(picname);
    case 4
        picname=['kongA',num2str(b),'.jpg'];
        objhpic=imread(picname);
    case 5
        picname=['outletA',num2str(b),'.jpg'];
        objhpic=imread(picname);
    case 6
        picname=['novelA',num2str(b),'.jpg'];
        objhpic=imread(picname);
    case 9
        picname=['sqeakineggsA',num2str(b),'.jpg'];
        objhpic=imread(picname); 
    case 12
        picname=['markerA',num2str(b),'.jpg'];
        objhpic=imread(picname);
    case 13
        picname=['stickynoteA',num2str(b),'.jpg'];
        objhpic=imread(picname);
    case 14
        picname=['baconballA',num2str(b),'.jpg'];
        objhpic=imread(picname);
    case 15
        picname=['bottlebrushA',num2str(b),'.jpg'];
        objhpic=imread(picname);
    case 16
        picname=['pencilA',num2str(b),'.jpg'];
        objhpic=imread(picname);
    case 19
        picname=['doveA',num2str(b),'.jpg'];
        objhpic=imread(picname);
    case 21
        picname=['crayonA',num2str(b),'.jpg'];
        objhpic=imread(picname);
end