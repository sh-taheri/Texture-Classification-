

function  f7 = Sum_variance(P)

M=size(P,1);
f7 = 0;
f8 = Sum_entropy(P);

for i=2:2*M
    
    f7 = f7 + ((i-f8)^2 )*PXPLUSY(P,i);
end