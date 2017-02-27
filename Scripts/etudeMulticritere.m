function [ production, coordonnees, exitFlag ] = etudeMulticritere(seuilsPourcent, seuilsAffine)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

options = optimset('Display', 'none');

[A, b] = ContraintesEtDegradation(seuilsPourcent, seuilsAffine);
A
b
[production, unused, exitFlag, unused] = linprog(-benefice(), A, b, [], [], lbForLinProg, [], [], options);
coordonnees = [transpose(benefice())*production ;
                -transpose(functionResponsableAtelier)*production;
                abs([1  1  1  -1  -1  -1]*production);
                transpose(functionRespPersonnel)*production/60;
                (sum(matPremProduit)+1)*production];
end

