function [h_estim]=irs2()
% Simulation of fBm
hurst = 0.6;
n = 1000;
boucle=1000;
h_estim = zeros(boucle,1);
for k = 1:boucle
X = wfbm(hurst, n);

% IRS
L = 1; % Ordre 1
Delta_2_x = diff(X,L);
Y = zeros(n-2,1);
for i = 1:length(Delta_2_x)-1
    Y(i) = abs(Delta_2_x(i)+Delta_2_x(i+1))/(abs(Delta_2_x(i))+abs(Delta_2_x(i+1)));
end

IRS = mean(Y);
h_estim(k) = fsolve(@(h)toSolve(IRS,h),0.6);
end
hh=histogram(h_estim);
ylabel('prob');
title('distribution de CLT');
%scf();
end

function [z] = toSolve(IRS,h)
n=1000;

% lambda_h
ro = 2^(2*h-1)-1;
%ro = (-3^(2*h)+2^(2*h+2)-7)/(8-2^(2*h+1));
lambda_h = 1/pi*acos(-ro)+1/pi*sqrt((1+ro)/(1-ro))*log(2/(1+ro));

% IRS - lambda_h
z = sqrt(n)*(IRS - lambda_h);
end
