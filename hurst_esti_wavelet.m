% Estimation of Hurst exponent with wavelet method

% Generate fBm with H=0.6
rng default;
H = 0.7;
len = 10000;

% Estimating the Hurst Exponent with Wavelet Method
n = 1000;
Hest = zeros(n,3);
for i = 1:n
	fBm06 = wfbm(H,len);
	Hest(i,:) = wfbmesti(fBm06);
end

% Plot histogram
n_bins = 21;

% Hest(:,2) is the result of method 2(wavelet method) of wfbmesti function  
histogram(Hest(:,2));
title('Estimer le param¨¨tre de Hurst avec Wavelet M¨¦thode ')
xlabel('Vraie valeur du param¨¨tre H = 0.7');

% Results
m1 = mean(Hest(:,2));
v1 = var(Hest(:,2));
sigma = std2(Hest(:,2));