% test irs function

% Hurst exponent
H = 0.6;

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
histogram(hurst_esti,n_bins); 
title('Estimating the Hurst Exponent with IRS Method ')
xlabel('True value of the parameter H = 0.6')

% Results
m1 = mean(hurst_esti);
v1 = var(hurst_esti);