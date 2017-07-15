

function f10 = Difference_variance(P)

M=size(P,1);
p1 =zeros(M,1);
for i=0:M-1
    p1(i+1) = PXMINUSY(P,i);
end

f10 = var(p1);
    
