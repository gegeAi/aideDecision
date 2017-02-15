function [ M ] = jugementPondere( poids )
%JUGEMENTPONDEREE Summary of this function goes here
%   Detailed explanation goes here

M = jugement();

poidsTriee = unique(poids);

poidMax = poidsTriee(size(poidsTriee,2));

poidMoyen = -10;
if size(poidsTriee,2) > 1 
    poidMoyen = poidsTriee(size(poidsTriee,2)-1);
end


for i = 1:1:4
    if poidMax == poids(i)
        % do nothing
    else if poidMoyen == poids(i)
        for n = 1:1:size(M(:,i))
            M(n,i) = M(n,i) / 10 * 6 + 2;
        end
    else
        for n = 1:1:size(M(:,i))
            M(n,i) = M(n,i) / 10 * 4 + 3;
        end    
    end
end


end
