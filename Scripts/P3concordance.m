function [ conc ] = P3concordance( Ai, Aj, Ponderation )
%CONCORDANCE retourne la concordance de l'action Ai
%� Aj (vecteur de coefficients) dans une analyse mutli-crit�re
%

sumpk = 0;
sumpi = size(Ai, 2);

for i = 1:size(Ai, 2)  
    if Ai(i) >= Aj(i)
        sumpk = sumpk + Ponderation(i);
    end
end

conc = sumpk / sumpi;

end

