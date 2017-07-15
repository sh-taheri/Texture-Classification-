

function f9 = Entropy(P)

M = size(P,1);
eps = 0.0001;

f9 = 0;
for i=1:M
    for j=1:M
        entropy = (P(i,j)+eps) * log ( P(i,j) + eps);
        f9 = f9 - entropy;
    end
end
        