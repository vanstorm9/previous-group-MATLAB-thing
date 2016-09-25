function choosemethod()
global picnub
global objnub
global method
method=2;
if (objnub==14)
  if (picnub==2|picnub==3)
      method=1;
  end
end
if (objnub==10)
  if (picnub==5)
      method=1;
  end
end      
if (objnub==19)
  if (picnub==2|picnub==4)
      method=1;
  end
end
if (objnub==2)
  if (picnub<4|(5<picnub&picnub<10))
      method=1;
  end
end
if (objnub==1)
  if (picnub<3|picnub==4|picnub==5|picnub==7)
      method=1;
  end
end
if (objnub==4)
  if (picnub<5)
      method=1;
  end
end
if (objnub==20)
      method=1;
end
if (objnub==18)
      method=1;
end
if (objnub==11)
  if (picnub<4)
      method=1;
  end
end
if (objnub==9)
  if (picnub<3)
      method=1;
  end
end
if (objnub==19)
  if (picnub==3|picnub==4)
      method=1;
  end
end
if (objnub==16)
  if (picnub==5|picnub==6)
      method=1;
  end
end
if (objnub==15)
  if (picnub==2)
      method=1;
  end
end
if (objnub==12)
  if (picnub==3)
      method=3;
  end
end