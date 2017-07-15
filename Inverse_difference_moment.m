

function f5 = Inverse_difference_moment(P)

M=size(P,1);
f5=0;
for i=1:M
    for j=1:M
        
        den = 1 + (i-j)^2;
        f5 = f5 + (1/den)*P(i,j);
    end
end
