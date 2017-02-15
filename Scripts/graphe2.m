function [ ] = graphe2(pas)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

M = [];
I = [];

oldval=0;
for i = 0.7:pas:0.9
   
    %vals = P1miniStocks(i);
    val = (sum(matPremProduit()) + 1)*P1miniStocks(i);
    M = [M val];
    I = [I i];
    
    i
    diff = oldval - val
    oldval = val;
end

M = transpose(M);
figure
p = plot(I, M);
legend(p, ['Stock Produit']);

    
end

