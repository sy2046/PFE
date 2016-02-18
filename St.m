n = 500;  % les points de grille
H = 0.7; % param¨¨tre de Hurst
r = nan(n+1,1);
r(1) = 1;
for k = 1:n
    r(k+1) = 0.5*((k+1)^(2*H) - 2*k^(2*H) + (k-1)^(2*H));
end
r = [r; r(end-1:-1:2)]; % premi¨¨re ligne de matrice circulante
lambda = real(fft(r))/(2*n); % valeurs propres
W = fft(sqrt(lambda).*complex(randn(2*n,1),randn(2*n,1)));
W = n^(-H)*cumsum(real(W(1:n+1))); % redimensionner
% plot((0:n)/n,W);
deltaW = zeros(n,1);
for j = 1:n
    deltaW(j)=W(j+1)-W(j);
end
x = 20;
T = 0.1;
%T = 500;
R = 0.05;
deltaT = T/n;
sigma = 0.3;
S0 = x;
S = zeros(n,1);
S(1) = S0;
S(2)=S(1)*exp((R-(sigma^2)/2)*deltaT+sigma*deltaW(1));
for t = 2:n
    S(t)=S(t-1)*exp((R-(sigma^2)/2)*deltaT+sigma*deltaW(t-1));
end
plot(S);