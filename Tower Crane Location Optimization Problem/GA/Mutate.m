
function y = Mutate(x, mu, VarMin, VarMax)

    nVar = numel(x);
    
    nmu = ceil(mu*nVar);
    
    j = randsample(nVar, nmu);
    
    sigma = 0.1*(VarMax-VarMin);
    
    y = x;
    M = x(j)+sigma*randn(size(j));
    y(j) = M(:,1);
    y = max(y, VarMin);
    y = min(y, VarMax);

end