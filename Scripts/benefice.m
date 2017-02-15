function [Benefice, beneficeMax, ProductionOpt] = benefice()
    TempsProdMachine = tempsMachine();
    PrixVente = prixVente();
    PrixAchatMatierePremieres = prixAchat();
    MatierePremiereProduit = matPremProduit();
    CoutHoraireMachine = coutMachineH();
    
    Benefice = PrixVente - PrixAchatMatierePremieres * MatierePremiereProduit;
    Benefice = Benefice - CoutHoraireMachine * transpose(TempsProdMachine) / 60;
    Benefice = transpose(Benefice);
    
    ProductionOpt = linprog(-Benefice, AForLinProg(), bForLinProg, [], [], lbForLinProg, []);
    
    beneficeMax = transpose(ProductionOpt) * Benefice;
end