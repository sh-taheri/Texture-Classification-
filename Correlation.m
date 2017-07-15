

function f3 = Correlation(P)

M = size(P,1);
sum = 0;
eps = 0.0001;

[px,py] = PX_PY(P);
Mux = mean(px);
Muy = mean(py);
sigmax = std(px);
sigmay = std(py);

for i=1:M
    for j=1:M
        sum = sum + i*j*P(i,j);
    end
end


f3 = (1/(M-1))^2*((sum - Mux*Muy )/(sigmax*sigmay + eps));

