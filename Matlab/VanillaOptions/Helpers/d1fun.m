function [d1] = d1fun(St, K, sigma, r, T, q)
%D1 Summary of this function goes here
%   Detailed explanation goes here

d1 = (log(St / K) + (r - q + sigma^2 / 2) * T) / (sigma * sqrt(T));
end

