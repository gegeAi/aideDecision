function [ NouveauA, Nouveaub ] = P1contrainteStocks( seuilActivite )
%P1CONTRAINTESTOCKS Summary of this function goes here
%   Detailed explanation goes here

APrec = AForLinProg() ;
BPrec = bForLinProg() ;
    
%BeneficeParProduit = 1337 ;%ajouter � A -> matrice ligne

[BeneficeParProduit, beneficeMax] = benefice() ;
seuilBenefice = beneficeMax*seuilActivite ;%ajouter � B -> entier

NouveauA = [APrec ; -BeneficeParProduit'];
Nouveaub = [BPrec ; -seuilBenefice];

end

