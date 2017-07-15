

function [px,py] = PX_PY(P)

M = size(P,1);
px=zeros(M,1);
py=zeros(M,1);

%%%%% py %%%%%
for i=1:M 
    sum=0;
    for j=1:M
      sum = sum + P(i,j);     
    end
    px(i) = sum; 
end
%%%%% py %%%%%
for j=1:M
    sum=0;
    for i=1:M
      sum = sum + P(i,j);     
    end
    py(j) = sum;   
end
        