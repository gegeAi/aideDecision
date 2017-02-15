function [ Solution ] = P3electre1( Poids, seuilConcordance, seuilDiscordance )
%P Summary of this function goes here
%   Detailed explanation goes here

JugementPondere = jugementPondere(Poids);

Concordance = P3matConcordance(JugementPondere);
Discordance = P3matDiscordance(JugementPondere);

Noyaux = zeros(1,size(JugementPondere,1));

for i = 1:1:size(Concordance,1)
    for j = 1:1:size(Concordance,2)
        if i ~= j
            if Concordance(i,j) >= seuilConcordance && Discordance(i,j) <= seuilDiscordance
                Noyaux(j) = 1;
            end
        end
    end
end

for i = 1:1:size(Noyaux, 2)
    if Noyaux(i) == 0
        i
    end
end

end

