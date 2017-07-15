

function f1 = Angular_Second_Moment(P)

M = size(P,1);

f1=0;
for i=1:M
    for j=1:M
        
    f1 = f1 + P(i,j)^2;
    end
end