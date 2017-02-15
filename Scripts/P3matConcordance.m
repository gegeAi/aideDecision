function [ C ] = P3matConcordance( MdJ )
%MATRICECONCORDANCE Retourne la matrice de concordance issue de la matrice
% des jugements table 6
% 

%MdJ = jugementSansDominances();

nbreAction = size(MdJ, 1);

C = ones(nbreAction, nbreAction);

for i = 1:nbreAction
    for j = 1:nbreAction
        if (i ~= j)
            C(i,j) = P3concordance(MdJ(i,:), MdJ(j,:));
        end
    end
end
           
end

