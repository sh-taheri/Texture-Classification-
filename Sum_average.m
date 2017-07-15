

function  f6 = Sum_average(P)

M=size(P,1);
f6 = 0;
for i=2:2*M
    
    f6 = f6 + i*PXPLUSY(P,i);
end
    