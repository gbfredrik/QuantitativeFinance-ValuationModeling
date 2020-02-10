function [OptionPrice] = BlackScholes(St, K, sigma, r, T, q, CallPut)
%BLACKSCHOLES Black-Scholes 1973 valuation
%   Valuation of vanilla options with Black-Scholes.
%   Dividends are supported by q. 
%   Params:
%       CallPut: C or P for Call and Put, respectively.

d1 = d1fun(St, K, sigma, r, T, q);
d2 = d2fun(d1, sigma, T);

if CallPut == 'C'
    OptionPrice = normcdf(d1) * exp(-q * T) * St - normcdf(d2) * exp(-r * T) * K;
elseif CallPut == 'P'
    OptionPrice = K * exp(-r * T) * normcdf(-d2) - exp(-q * T) * St * normcdf(-d1);
end
end

