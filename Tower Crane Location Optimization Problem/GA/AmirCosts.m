clc;
clear;
close all;

Costs = zeros(30,1);
for ii = 1:30

    BestCost = sprintf('BestCost%d.mat',ii);
    Cost = load(BestCost);

    Costs(ii,1) = Cost.Cost;

end


 