function [v] = VaRfn(H,R,CI,Nd,n,MS,MC)
%% Calculate fractional VaR with Monte Carlo method for n correlated stocks
    %
    %% Input:
    %   H is the hurst exponent of fractional Brownian motion, it'a real
    %   number in (0, 1).
    %
    %   R is the risk-free interest rate
    %
    %   CI is the confidence interval
    %   
    %   Nd is the number of days
    %
    %   n is the number of stocks
    %
    %   MS is a (n,3) matrix of stock parameters:
    %   MS(i,1) is the initial price of stock i;
    %   MS(i,2) is the daily volatility of stock i;
    %   MS(i,3) is the investiment of stock i;
    %
    %   MC is a (n,n) matrix of correlations:
    %   MS(i,j) is the correlation between stock i and stock j

    %% Output:
    %   v is the fractional VaR
  
    %% Last update: 2016/2/23
    %% Author: SUN,XU&ZHU
    
    % Verify inputs
    validateattributes(MS, {'numeric'},{'size',[n,3]});
    validateattributes(MC, {'numeric'},{'size',[n,n]});
    
    S = MS(:,1);
    sigma = MS(:,2);
    W = MS(:,3);
    
    % Use function VaRf() to calculate fractional VaR for each stock
    Vars = zeros(n,1);
    for i = 1:n
        Vars(i) = VaRf(H(i),R,CI,Nd,S(i),sigma(i),W(i));
    end
    
    % Calculate VaR of the portfolio
    v = sqrt(Vars' * MC * Vars);
end