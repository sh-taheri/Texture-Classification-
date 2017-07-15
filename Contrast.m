

function f2 = Contrast(P)

M = size(P);

f2 = 0;
for n = 0:M-1
    
    sum1 = 0;
    for i=1:M
        for j=1:M
            if (abs(i-j))== n
                sum1 = sum1 + P(i,j);
            end
            
        end
    end
    
    f2 = f2 + n^2 * sum1;
end
    
    

