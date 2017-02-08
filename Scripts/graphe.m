function [ ] = graphe(pas)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

M = [];
I = [];
for i = 0:pas:1
   
    vals = LPRespPersonnel(i);
    M = [M vals];
    I = [I i];
    
end

M = transpose(M);
figure
p = plot(I, M);
legend(p, ['A fabriqués'; 'B fabriqués'; 'C fabriqués'; 'D fabriqués'; 'E fabriqués'; 'F fabriqués']);

    
end

