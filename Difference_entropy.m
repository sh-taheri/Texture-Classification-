

function f11 = Difference_entropy(P)

M = size(P,1);
f11=0;
eps = 0.0001;
for i=0:M-1
    dis_entropy = (PXMINUSY(P,i)+ eps) * log(PXMINUSY(P,i)+ eps);
    f11 = f11 - dis_entropy;
end