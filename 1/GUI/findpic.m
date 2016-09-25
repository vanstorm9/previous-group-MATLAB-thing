function findpic(a,b)
global objpic
global objnub
objnub=a;
switch a
    case 1
        picname=['glue',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 2
        picname=['duck',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 3
        picname=['joke',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 4
        picname=['kong',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 5
        picname=['plug',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 6
        picname=['novel',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 7
        picname=['expo',num2str(b),'.jpg'];
        objpic=imread(picname);  
    case 8
        picname=['indexcard',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 9
        picname=['sqeakineggs',num2str(b),'.jpg'];
        objpic=imread(picname); 
    case 10
        picname=['cheeseit',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 11
        picname=['sippycup',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 12
        picname=['marker',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 13
        picname=['stickynote',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 14
        picname=['baconball',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 15
        picname=['bottlebrush',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 16
        picname=['pencil',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 17
        picname=['sparkplug',num2str(b),'.jpg'];
        objpic=imread(picname);  
    case 18
        picname=['r',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 19
        picname=['dove',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 20
        picname=['meshcup',num2str(b),'.jpg'];
        objpic=imread(picname);
    case 21
        picname=['crayon',num2str(b),'.jpg'];
        objpic=imread(picname);
end