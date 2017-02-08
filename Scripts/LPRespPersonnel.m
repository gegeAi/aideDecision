function [ x ] = LPRespPersonnel(seuilActivite)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

[A, b] = P1ContrainteStocks(seuilActivite);
x = linprog(funcitonRespPersonnel, A, b, [], [], lbForLinProg, []);

end

