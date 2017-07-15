

function f4 = Variance(P)

M=size(P,1);
P1 = reshape(P,M*M,1);
Mu = var(P1);
f4=0;

for i=1:M
    for j=1:M
        
       f4 = f4 +((i-Mu)^2)*P(i,j);
    end
end