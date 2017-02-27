function [ production, coordonnees, valeurDeConfiance, point] = trouveMeilleurCompromis(pas, debut, fin)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

optimal = [10159.2083333325 389.035087719208 0 36.2274000000000 1212.50000000000];

valeurDeConfiance = 1000000;

point = [0 0 0 0 0];

for i=0.7:pas:1 % au minimum 70% du nb de produits max fabriqués
    for k=0:pas:0.6 % au maximum 1,6 fois l'utilisation optimale des machines 1 et 3
        for l=debut:pas:fin % au maximum fin + 1 fois le stock optimal
            [prod, coord, exitFlag] = etudeMulticritere([i 0 k l], [0;-50;-50;0;0]);
            tpsConfiance = 0;
            for n=1:5
                denom = optimal(n);
                if(optimal(n) == 0)
                    denom = 50;
                end
                tpsConfiance = tpsConfiance + abs(coord(n)-optimal(n))/denom;
            end
            if tpsConfiance < valeurDeConfiance && exitFlag == 1
                production = prod;
                coordonnees = coord;
                valeurDeConfiance = tpsConfiance;
                point = [i 0 k l];
            end
        end
    end
end
end

