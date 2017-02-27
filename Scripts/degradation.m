function [ degradation ] = degradation(seuilPourcent, seuilsAffine)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[unused, seuilCpt, unused] = benefice;
seuilRespAtelier = transpose(functionResponsableAtelier)*LPResponsableAtelier();
[seuilRespCommercial, unused] = respCommercial(1, 0);
seuilRespCommercial = [1  1  1  -1  -1  -1]*seuilRespCommercial;
seuilRespCommercial = abs(seuilRespCommercial);
seuilRespPersonnel = transpose(functionRespPersonnel)*LPRespPersonnel(0.7);
seuilStock = (sum(matPremProduit)+1)*P1miniStocks(0.78);

degradation = [
                seuilRespAtelier; 
                seuilRespCommercial; 
                -seuilRespCommercial;
                seuilRespPersonnel;
                seuilStock];
            
MatPourcent = [seuilPourcent(1) 0 0 0 0 ;
                0 seuilPourcent(2) 0 0 0 ;
                0 0 seuilPourcent(2) 0 0 ;
                0 0 0 1+seuilPourcent(3) 0 ;
                0 0 0 0 1+seuilPourcent(4)];
            
degradation = MatPourcent*degradation - seuilsAffine; 

end