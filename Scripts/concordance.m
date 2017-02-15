function [ conc ] = concordance( Ai, Aj )
%CONCORDANCE retourne la concordance de l'action Ai
%à Aj (vecteur de coefficients) dans une analyse mutli-critère
%

sumpk = 0;
sumpi = 0;

for i = 1:size(Ai);

conc = sumpk / sumpi;
end

