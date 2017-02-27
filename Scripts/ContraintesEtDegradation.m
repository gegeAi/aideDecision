function [ Contraintes, b ] = ContraintesEtDegradation(degrad, degradAffine)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[Benefice, unused, unused] = benefice();
FcRespCommercial = [1  1  1  -1  -1  -1];

Contraintes = AForLinProg();
Contraintes = [Contraintes; 
                -transpose(Benefice); 
                transpose(functionResponsableAtelier());
                FcRespCommercial;
                -FcRespCommercial;
                -transpose(functionRespPersonnel());
                -transpose(Benefice)];

b = bForLinProg();

seuils = degradation(degrad, degradAffine);

b = [b ; seuils];

end

