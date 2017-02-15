function [ d ] = P3discordance( L1 , L2 )
%P3DISCORDANCE Summary of this function goes here
%   Detailed explanation goes here

max = 0;
for i = 1:1:size(L1)
    val = L1(i) - L2(i);
    if val > max
       max = val;
    end
end

d = max / 10;%echmax=10

end

