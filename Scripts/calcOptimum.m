function [ValeurCritere] = calcOptimum(Production)
    Production = transpose(Production);
    benefice = Production * functionBenefice();
    respAtelier = Production * [1; 1; 1; 1; 1; 1;];
    respStock = -Production * transpose(sum(matPremProduit()) + 1);
    respCommercial = -abs(Production * [1; 1; 1; -1; -1; -1]);
    respPersonnel = -Production * functionRespPersonnel();
    ValeurCritere = [benefice respAtelier respStock respCommercial respPersonnel];
end


