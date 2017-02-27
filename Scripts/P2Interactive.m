function [MatriceGain] = P2Interactive()
    MatriceGain = matriceGain();
end

function [MatriceGain] = matriceGain ()
    [unused, unused, ProductionOptBenefice] = benefice();
    MatriceGain = calcOptimum(ProductionOptBenefice);
    
    ProductionOptRespAtelier = LPResponsableAtelier();
    MatriceGain = [MatriceGain ; calcOptimum(ProductionOptRespAtelier)];
    
    ProductionOptRespStock = [0; 0; 0; 0; 242.5; 0];
    MatriceGain = [MatriceGain ; calcOptimum(ProductionOptRespStock)];
    
    [ProductionOptRespCommercial, unused] = respCommercial(1, 0);
    MatriceGain = [MatriceGain ; calcOptimum(ProductionOptRespCommercial)];
    
    ProductionOptRespPersonnel = [0; 0; 0; 0; 217.3646; 0];
    MatriceGain = [MatriceGain ; calcOptimum(ProductionOptRespPersonnel)];  
end

function [ValeurCritere] = calcOptimum(Production)
    Production = transpose(Production);
    benefice = Production * functionBenefice();
    respAtelier = Production * [1; 1; 1; 1; 1; 1;];
    respStock = -Production * transpose(sum(matPremProduit()) + 1);
    respCommercial = -abs(Production * [1; 1; 1; -1; -1; -1]);
    respPersonnel = -Production * functionRespPersonnel();
    ValeurCritere = [benefice respAtelier respStock respCommercial respPersonnel];
end