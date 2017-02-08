function [ S ] = P1miniStocks( seuilActivite )
%P1MINISTOCKS Summary of this function goes here
%   Detailed explanation goes here

[A,b] = P1contrainteStocks( seuilActivite );

MatPremProduit = matPremProduit();

F = sum(MatPremProduit) + 1;
F = F';

S = linprog(F, A, b, [], [], lbForLinProg(), []);

end

