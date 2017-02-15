function [ Discordance ] = P3matDiscordance( JugementPondere )
%P3MATDISCORDANCE Summary of this function goes here
%   Detailed explanation goes here

sizeA = size(JugementPondere,1);

Discordance = ones(sizeA,sizeA);

for i = 1:1:sizeA
   for j = 1:1:sizeA
       if i ~= j
           disc = P3discordance(JugementPondere(i,:),JugementPondere(j,:));
           Discordance(j,i) = disc;
       end
   end
end

end

