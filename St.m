function [S]=St(H,S0,R,sigma)
    %% Use fractional Brownian motion to simulate stock prices
    %
    %% Input:
    %   H is the hurst exponent of fractional Brownian motion, it'a real
    %   number in (0, 1).
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
    %% Last update: 2016/2/22
    %% Author: SUN,XU&ZHU
    
    %% Simulate fractional Brownian motion with Wood&Chan
    n = 1000;  % les points de grille
    r = nan(n+1,1);
    r(1) = 1;
    for k = 1:n
        r(k+1) = 0.5*((k+1)^(2*H) - 2*k^(2*H) + (k-1)^(2*H));
    end
    r = [r; r(end-1:-1:2)]; % premi¨¨re ligne de matrice circulante
    lambda = real(fft(r))/(2*n); % valeurs propres
    W = fft(sqrt(lambda).*complex(randn(2*n,1),randn(2*n,1)));
    W = n^(-H)*cumsum(real(W(1:n+1))); % redimensionner

    %% Calculate stock prices
    T = 1;
    S = zeros(n,1);
    S(1) = S0;
    for t = 2:n
        S(t)=S(1)*exp(sigma*W(t)+R*t*(T/n)-(sigma^2)/2*(t*(T/n))^(2*H));
    end
end