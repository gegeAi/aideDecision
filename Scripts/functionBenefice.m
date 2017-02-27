function [ Benefice ] = functionBenefice()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    TempsProdMachine = tempsMachine();
    PrixVente = prixVente();
    PrixAchatMatierePremieres = prixAchat();
    MatierePremiereProduit = matPremProduit();
    CoutHoraireMachine = coutMachineH();
    
    Benefice = PrixVente - PrixAchatMatierePremieres * MatierePremiereProduit;
    Benefice = Benefice - CoutHoraireMachine * transpose(TempsProdMachine) / 60;
    Benefice = transpose(Benefice);
end

