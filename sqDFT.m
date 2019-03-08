% convert square wave from the time domain to the frequency domain

Fs = 100; % sampling frequency
%t = -0.5:1/Fs:0.5;  % Time vector 
L = length(t);      % Signal length

N = 15;
%n = 2^nextpow2(L);
k = -N:2:N;
ak = 2./(j*pi*k); % Xk’s at odd freqs, Xk = 2*ak
fk = 1*[0 k];
ak = [1/2 ak]; % X0 = a0

[x,t] = fs_synth(fk, ak, Fs*N, 1, 0);

L = length(t);      % Signal length
n = 2^nextpow2(L);

figure (1)
plot(t,real(x)) % note x is not purely real
hold on

grid on % due to numerical imperfections
xlabel('Time (s)')
ylabel('Amplitude')


% Convert the Square Wave to the frequency domain.
Y = fft(x,n);

% Define the frequency domain and plot the unique frequencies.
f = Fs*(0:(n/2))/n;
P = abs(Y/n);

figure (2)
plot(f,P(1:n/2+1)) 
title('Square Wave in Frequency Domain')
xlabel('Frequency (f)')
ylabel('|P(f)|')

hold off

