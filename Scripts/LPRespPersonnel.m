function [ x ] = LPRespPersonnel(seuilActivite)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

[A, b] = P1contrainteStocks(seuilActivite);
x = linprog(functionRespPersonnel, A, b, [], [], lbForLinProg, []);

end

