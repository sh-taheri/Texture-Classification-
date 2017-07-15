

function px_plus_y = PXPLUSY(P,k)

M = size(P,1);

px_plus_y = 0;
for i=1:M
    for j=1:M
        
        if ( (i+j) == k)
            px_plus_y = px_plus_y + P(i,j);
        end    
    end
end
            