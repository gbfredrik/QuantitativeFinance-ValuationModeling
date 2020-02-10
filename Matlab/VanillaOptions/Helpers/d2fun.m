function [d2] = d2fun(d1, sigma, T)
%D2 Summary of this function goes here
%   Detailed explanation goes here

d2 = d1 - sigma * sqrt(T);
end

