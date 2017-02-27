function [Benefice, beneficeMax, ProductionOpt] = benefice()
    Benefice = functionBenefice();
    
    ProductionOpt = linprog(-Benefice, AForLinProg(), bForLinProg, [], [], lbForLinProg, []);
    
    beneficeMax = transpose(ProductionOpt) * Benefice;
end