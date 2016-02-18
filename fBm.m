% 1. Simulation of fBm with wavelet method

% Set the sample length 
lg = 2^15; 
% Generate and plot wavelet-based fBm for H = 0.3
fBm03 = wfbm(0.3,lg);
% Generate and plot wavelet-based fBm for H = 0.5 
fBm05 = wfbm(0.5,lg);
% Generate and plot wavelet-based fBm for H = 0.7 
fBm07 = wfbm(0.7,lg);

%plot
figure(1);plot((1:lg)/lg,fBm03);
title('Simulation of Fractional Brownian motion with Wavelet Method');
xlabel('Hurst parameter = 0.3');
figure(2);plot((1:lg)/lg,fBm05);
title('Simulation of Fractional Brownian motion with Wavelet Method');
xlabel('Hurst parameter = 0.5');
figure(3);plot((1:lg)/lg,fBm07);
title('Simulation of Fractional Brownian motion with Wavelet Method');
xlabel('Hurst parameter = 0.7');

% 2. Estimation of H with wavelet methods

% Generate fBm with H=0.6
rng default;
H = 0.6;
len = 10000;

% Estimating the Hurst Exponent with Wavelet Method
n = 1000;
Hest = zeros(n,3);
for i = 1:n
	fBm06 = wfbm(H,len);
	Hest(i,:) = wfbmesti(fBm06);
end

% Results
n_bins = 21;
figure(4);histogram(Hest(:,2),n_bins);
title('Estimating the Hurst Exponent with Wavelet Method ')
xlabel('True value of the parameter H = 0.6')
m1 = mean(Hest(:,2));
v1 = var(Hest(:,2));

