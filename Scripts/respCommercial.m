function [ProductionOpt, beneficeProd] = respCommercial(choixOpt, valMin, ecartFamilleMax)
    
    F = [1 ; 1 ; 1 ; -1 ; -1 ; -1];
    AForLin = [AForLinProg() ; transpose(F) ; transpose(-F)];
    bForLin = [ bForLinProg() ; -ecartFamilleMax ; ecartFamilleMax ; -valMin];
    [Benefice, beneficeMax, ProductionOpt] = benefice();
    
    if (choixOpt == 1) % benefice >= valMin
        AForLin = [AForLin ; -transpose(Benefice)];
    end
    if (choixOpt == 2) % nbProduit >= valMin
        AForLin = [AForLin ; -1 -1 -1 -1 -1 -1];
    end
    
    ProductionOpt = linprog(F, AForLin, bForLin, [], [], lbForLinProg, []);
    beneficeProd = transpose(Benefice) * ProductionOpt;
    
end