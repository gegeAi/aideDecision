function [ production, coordonnees ] = trouveMeilleurCompromis(pas)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

optimal = [10159.2083333325 389.035087719208 0 36.2274000000000 1212.50000000000];

valeurDeConfiance = 1000000;

for i=0:pas:1
    for j=0:pas:1
        for k=0:pas:1
            for l=0:pas:1
                for m=0:pas:1
                    [prod, coord, exitFlag] = etudeMulticritere([i j k l m], [0;0;-50;-50;0;0]);
                    tpsConfiance = 0;
                    for n=1:5
                        tpsConfiance = tpsConfiance + abs(coord(n)-optimal(n))/(optimal(n)+1);
                    end
                    if tpsConfiance < valeurDeConfiance && exitFlag == 1
                        production = prod;
                        coordonnees = coord;
                        valeurDeConfiance = tpsConfiance;
                    end
                end
            end
        end
    
    end
end
end
