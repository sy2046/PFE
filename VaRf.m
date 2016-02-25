function [v] = VaRf(H,R,CI,Nd,S0,sigma,W)
    %% Calculate fractional VaR with Monte Carlo method
    %
    %% Input:
    %   H is the hurst exponent of fractional Brownian motion, it'a real
    %   number in (0, 1).
    %
    %   S0 is the initial stock price
    %
    %   R is the risk-free interest rate
    %
    %   sigma is the daily volatility
    %
    %   CI is the confidence interval
    %   
    %   W is the investiment value
    %
    %   Nd is the number of days
    %% Output:
    %   v is the fractional VaR
    %   
    %% Last update: 2016/2/24
    %% Author: SUN,XU&ZHU
    
    % Calculate lost and gain with 1000 simulations of stock prices
    res = zeros(1000,1);
    for i=1:1000
       S = St(H,S0,R,sigma); % simulate stock prices
       res(i) = (S(end) - S(1))/S(1);  % results of lost or gain
    end
    
    % sorts the results
    res = sort(res);
    
    % compute index for given confidence interval
    index = round(1000*(1-CI));
    
    % return fractional VaR of Nd days
    v = W * Nd^H * res(index);
end