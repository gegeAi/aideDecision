function [ M ] = P3matDiscordance(A )
%P3MATDISCORDANCE Summary of this function goes here
%   Detailed explanation goes here


sizeA = size(A,1);

M = zeros(sizeA,sizeA);

for i = 1:1:sizeA
   for j = 1:1:sizeA
       if i ~= j
           disc = P3discordance(A(i,:),A(j,:));
           M(i,j) = disc;
       end
   end
end

end

