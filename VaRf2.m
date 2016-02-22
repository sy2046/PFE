function [v]=VaRf2(H,R,CI,Nd,S1,sigma1,W1,S2,sigma2,W2,rho)
%% Calculate fractional VaR with Monte Carlo method
    %
    %% Input:
    %   H is the hurst exponent of fractional Brownian motion, it'a real
    %   number in (0, 1).
    %
    %   S1,S2 are the initial stock prices
    %
    %   R is the risk-free interest rate
    %
    %   sigma1,sigma2 are the daily volatilities
    %
    %   CI is the confidence interval
    %   
    %   W1,W2 are the investiment values
    %
    %   Nd is the number of days
    %
    %   rho is the correlation between two stocks
    %% Output:
    %   v is the fractional VaR
    %   
    %% Last update: 2016/2/22
    %% Author: SUN,XU&ZHU

    % Calculate fractional VaR for each stock
    % use function VaRf()
    VaR1 = VaRf(H,S1,R,sigma1,CI,W1,Nd);
    VaR2 = VaRf(H,S2,R,sigma2,CI,W2,Nd);
    
    % Calculate VaR of the portfolio
    v = sqrt(VaR1^2 + VaR2^2 + 2*rho*VaR1*VaR2);

end