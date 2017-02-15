function [K] = grapheUtilisationMachine(pas)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

M = [];
I = [];

tm = tempsMachine();
for i = 0:pas:1
   
    vals = transpose(LPRespPersonnel(i));
    vals = transpose(vals*tm);
    M = [M vals];
    I = [I i];
    
end

K = [M(1, :) ;M(3, :) ; (M(1, :)+M(3, :))];
figure
p = plot(I, K);
    
end

