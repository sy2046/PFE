% test irs function

% Hurst exponent
H = 0.5;

% Length of fBm
length = 1000;

% Results of estimations
hurst_esti = zeros(1000,1);

for i=1:1000
   % simulate fractional Brownian motion
   fBm = wfbm(H, length);
   hurst_esti(i) = irs(fBm);
end

% Plot histogram
n_bins = 20; 
histogram(hurst_esti,n_bins, 'Normalization', 'probability'); 
title('Estimer le param¨¨tre de Hurst avec IRS M¨¦thode ')
xlabel('Vraie valeur du param¨¨tre H = 0.5')

% Results
m1 = mean(hurst_esti);
v1 = var(hurst_esti);
sigma = std2(hurst_esti);