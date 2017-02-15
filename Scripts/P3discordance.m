function [ result ] = P3discordance( L1 , L2 )
%P3DISCORDANCE Summary of this function goes here
%   Detailed explanation goes here

L3 = L1 - L2;
maxVal = max(L3);
maxVal = max(maxVal, 0);
result = maxVal / 10;%echmax=10

end

