function howmanybin( )
global x
global y
global z
global s
global bin
takedepthpicture
status='finish depth'
startmotor
status='finish start'
takeapicture(3)
for k=1:3
    bin=k;
    checkbin()
end
fclose(s); 
fclose(x);
fclose(y);
fclose(z);