function try1(x1)
x1=num2str(x1);
x = serial('COM6');
set(x,'BaudRate',9600)
fopen(x);
pause(2)
gox1(x1);
b = str2num(fgetl(x));
if b==1
gox(x1);
end
fclose(x);
end

function gox1(x1)
x = serial('COM6');
fprintf(x,'%s\n',x1);
end

