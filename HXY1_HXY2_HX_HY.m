

function [hxy1,hxy2,hx,hy] = HXY1_HXY2_HX_HY(P)

M=size(P,1);
eps = 0.0001;
hxy1=0;
hxy2=0;
hx=0;
hy=0;
[px,py] = PX_PY(P);


for i=1:M
    
    hx = hx - px(i)*log( px(i) + eps);
    hy = hy - py(i)*log( py(i) + eps); 
    
    for j=1:M 
      hxy1 = hxy1 - P(i,j)* log (px(i)*py(j)+eps);
      hxy2 = hxy2 - px(i)*py(j)* log (px(i)*py(j)+eps);
    end
end
      