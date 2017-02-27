function [ Contraintes, b ] = ContraintesEtDegradation(degrad, degradAffine)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[Benefice, unused, unused] = benefice();
FcRespCommercial = [1  1  1  -1  -1  -1];

FcStock = sum(matPremProduit()) + 1;

Contraintes = AForLinProg();
Contraintes = [Contraintes;
                transpose(functionResponsableAtelier());
                FcRespCommercial;
                -FcRespCommercial;
                transpose(functionRespPersonnel());
                FcStock];

b = bForLinProg();

seuils = degradation(degrad, degradAffine);

b = [b ; seuils];

end

