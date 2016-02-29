function [S]=St_mb(S0,R,sigma)
    %% Use Brownian motion to simulate stock prices
    %
    %% Input:
    %
    %   S0 is the initial stock price
    %
    %   R is the risk-free interest rate
    %
    %   sigma is the volatility
    %
    %% Output:
    %   S is a 1000x1 vector of stock prices
    %   
    %% Last update: 2016/2/25
    %% Author: SUN,XU&ZHU
    
    %% Simulate fractional Brownian motion with Box&Muller
    
    n = 500;  % les points de grille
    W=zeros(n,1);
    U1=rand(n,1);
    U2=rand(n,1);
    for t = 1:n
       W(t) = sqrt(-2*log(U1(t,1)))*cos(2*pi*U2(t,1)); % A random variable with a standard normal distribution
    end    
        
 

    %% Calculate stock prices
    T = 1;
    S = zeros(n,1);
    S(1) = S0;
    for t = 2:n
        S(t)=S(1)*exp(sigma*W(t)+R*t*(T/n)-(sigma^2)/2*(t*(T/n)));
    end
end

