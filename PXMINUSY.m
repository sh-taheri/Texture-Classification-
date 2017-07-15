

function px_minus_y = PXMINUSY(P,k)

M = size(P,1);

px_minus_y = 0;
for i=1:M
    for j=1:M
        
        if ( (abs(i-j)) == k)
            px_minus_y = px_minus_y + P(i,j);
        end    
    end
end