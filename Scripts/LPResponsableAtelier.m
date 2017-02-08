function [ x ] = LPResponsableAtelier()
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

x = linprog( functionResponsableAtelier(), AForLinProg(), bForLinProg(), [], [], lbForLinProg(), []); 

end

