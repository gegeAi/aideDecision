function [ conc ] = P3concordance( Ai, Aj )
%CONCORDANCE retourne la concordance de l'action Ai
%à Aj (vecteur de coefficients) dans une analyse mutli-critère
%

sumpk = 0;
sumpi = size(Ai, 2);

for i = 1:size(Ai, 2)  
    if Ai(i) >= Aj(i)
        sumpk = sumpk + 1;
    end
end

conc = sumpk / sumpi;

end

