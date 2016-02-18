% Simulation of fractional Brownian motion with wavelet method

% Set the sample length 
lg = 2^15; 

% Generate wavelet-based fBm for H = 0.3
fBm03 = wfbm(0.3,lg);

% Generate wavelet-based fBm for H = 0.5 
fBm05 = wfbm(0.5,lg);

% Generate wavelet-based fBm for H = 0.7 
fBm07 = wfbm(0.7,lg);

% plot
figure(1);plot((1:lg)/lg,fBm03);
title('Simulation of Fractional Brownian motion with Wavelet Method');
xlabel('Hurst parameter = 0.3');

figure(2);plot((1:lg)/lg,fBm05);
title('Simulation of Fractional Brownian motion with Wavelet Method');
xlabel('Hurst parameter = 0.5');

figure(3);plot((1:lg)/lg,fBm07);
title('Simulation of Fractional Brownian motion with Wavelet Method');
xlabel('Hurst parameter = 0.7');

