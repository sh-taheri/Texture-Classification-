

function [f12,f13] = Information_of_correlation(P)

eps=0.0001;

HXY = Entropy(P);
[hxy1,hxy2,hx,hy] = HXY1_HXY2_HX_HY(P);

f12 = ( HXY - hxy1) / ( max(hx,hy)+eps);

arg = -2*(hxy2 - HXY);
f13 = (1-exp(arg))^2;
