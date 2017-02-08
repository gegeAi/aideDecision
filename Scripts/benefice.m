function [Benefice] = benefice()
    TempsProdMachine = tempsMachine();
    PrixVente = prixVente();
    PrixAchatMatierePremieres = prixAchat();
    MatierePremiereProduit = matPremProduit();
    CoutHoraireMachine = coutMachineH();
    
    Benefice = PrixVente - PrixAchatMatierePremieres * MatierePremiereProduit;
    Benefice = Benefice - CoutHoraireMachine * transpose(TempsProdMachine) / 60;
    Benefice = -transpose(Benefice);
    
    linprog(Benefice, AForLinProg(), bForLinProg, [], [], lbForLinProg, [])
end