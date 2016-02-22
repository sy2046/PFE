%% default parameters
H = 0.06; % Hurst exponent
R = 0.05; % risk free intrest
Nd = 100; % number of days
CI = 0.85; % confidence interval

%% test 1
% paramaters for test1
S0 = 20; % initial stock price
sigma = 0.003; % daily volatility
W = 100; % investiment value
% Test1: VaRf()
v1 = VaRf(H,S0,R,sigma,CI,W,Nd);

%% test 2
% paramaters for test2
S1 = 20; % initial stock price
sigma1 = 0.003; % daily volatility
W1 = 120; % investiment value

S2 = 30; % initial stock price
sigma2 = 0.004; % daily volatility
W2 = 80; % investiment value

rho = 0.2; % correlation between two stocks
% Test2: VaRf2()
v2 = VaRf2(H,R,CI,Nd,S1,sigma1,W1,S2,sigma2,W2,rho);