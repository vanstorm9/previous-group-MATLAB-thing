%% WeightedSPT
bins=['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L'];
global A
%bins=['A' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11' '12'];
Ti= [2 2 2 1.5 1.5 1.5 1 1 1 .5 .5 .5]; %define processing time (we have to record this for each)
Wi=[A 15 10 20 10 10 15 10 20 20 15 10]; %weight/points attributed for bin i
TWi=[Ti./Wi]; 
[M,I]=sort(TWi);
Order=bins(I)

