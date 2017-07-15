

function  f8 = Sum_entropy(P)

M=size(P,1);
f8 = 0;
eps = 0.0001;

for i=2:2*M
    
    sum_entropy = (PXPLUSY(P,i)+ eps) * log ( PXPLUSY(P,i)+ eps );
    f8 = f8 - sum_entropy;
end