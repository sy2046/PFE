function [h_estim]=irs(X)
    % Function to estimate hurst exponent of fractional Brownian motion
    % 
    % X: X is a fractional Brownian motion
    %
    % example: X = wfbm(0.6, 1000)
    %
    % h_estim is the value of the estimation of hurst exponent
    
    L = 1; % Ordre 1
    n = 1000;
    Delta_2_x = diff(X,L);
    Y = zeros(n-2,1);
    
    for i = 1:length(Delta_2_x)-1
        Y(i) = abs(Delta_2_x(i)+Delta_2_x(i+1))/(abs(Delta_2_x(i))+abs(Delta_2_x(i+1)));
    end

    IRS = mean(Y);
    h_estim = fsolve(@(h)toSolve(IRS,h),0.6);
end

function [z] = toSolve(IRS,h)
    n=1000;

    % lambda_h
    ro = 2^(2*h-1)-1; % Premier order
    lambda_h = 1/pi*acos(-ro)+1/pi*sqrt((1+ro)/(1-ro))*log(2/(1+ro));

    % IRS - lambda_h
    z = sqrt(n)*(IRS - lambda_h);
end
