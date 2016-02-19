% Simulation de mBf avec Wood&Chan

n = 2^15;  % les points de grille
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
plot((0:n)/n,W);