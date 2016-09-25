function choosepic(i)
global ref_Image
switch i
    case 1
        ref_Image = imread('r1.jpg');
    case 2
        ref_Image = imread('r2.jpg');
    case 3
        ref_Image = imread('r3.jpg');
    case 4
        ref_Image = imread('r4.jpg');
    case 5
        ref_Image = imread('r5.jpg');
    case 6
        ref_Image = imread('r6.jpg');
    case 7
        ref_Image = imread('r7.jpg');
    case 8
        ref_Image = imread('r8.jpg');
end