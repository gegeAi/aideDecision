function [ProductionOpt, beneficeProd] = respCommercial(choixOpt, ecartFamilleMax)
    
    DifferenceFamille = [1 ; 1 ; 1 ; -1 ; -1 ; -1];
    AForLin = [AForLinProg() ; transpose(DifferenceFamille) ; transpose(-DifferenceFamille)];
    bForLin = [ bForLinProg() ; ecartFamilleMax ; ecartFamilleMax ];
    [Benefice, unused1, unused2] = benefice();
    
    if (choixOpt == 1) % optimise le benefice
        ProductionOpt = linprog(-Benefice, AForLin, bForLin, [], [], lbForLinProg, []);
    end
    if (choixOpt == 2) % optimise le nb de produit produit
        F = ones(6, 1);
        ProductionOpt = linprog(-F, AForLin, bForLin, [], [], lbForLinProg, []);
    end
    
    beneficeProd = transpose(Benefice) * ProductionOpt;
    ecartFamille = transpose(DifferenceFamille) * ProductionOpt
    
end