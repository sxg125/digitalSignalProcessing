 N = 15; k = 1:2:N; % odd frequencies
 Xk = 2./(j*pi*k); % Xk’s at odd freqs, Xk = 2*ak
k = [0 k]; % augment with DC value
 Xk = [1/2 Xk]; % X0 = a0
subplot(211)
Line_Spectra(1*k,Xk,'mag')
 subplot(212)
 Line_Spectra(1*k,Xk,'phase')

