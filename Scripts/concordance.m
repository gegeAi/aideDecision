function [ conc ] = concordance( Ai, Aj )
%CONCORDANCE retourne la concordance de l'action Ai
%� Aj (vecteur de coefficients) dans une analyse mutli-crit�re
%

sumpk = 0;
sumpi = 0;

for i = 1:size(Ai);

conc = sumpk / sumpi;
end

