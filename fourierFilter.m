x = rand(1,10); % suppose 10 samples of a random signal
y = fft(x); % Fourier transform of the signal
iy = ifft(y); % inverse Fourier transform
x2 = real(iy); % chop off tiny imaginary parts
norm(x-x2); % compare original with inverse of transformed

% Sample a signal during 4 seconds, at a sampling rate of 0.01
dt = 1/100; % sampling rate
et = 4; % end of the interval
t = 0:dt:et; % sampling range
y = 3*sin(4*2*pi*t) + 5*sin(2*2*pi*t); % sample the signal

% Amplitude Vs Time plot
subplot(2,1,1); % first of two plots
plot(t,y); grid on % plot with grid
axis([0 et -8 8]); % adjust scaling
xlabel('Time (s)'); % time expressed in seconds
ylabel('Amplitude'); % amplitude as function of time

% Fouraier Transform
Y = fft(y); % compute Fourier transform
n = size(y,2)/2; % 2nd half are complex conjugates
amp_spec = abs(Y)/n; % absolute value and normalize

% Plot Amplitude Spectrum

subplot(2,1,2); % second of two plots
freq = (0:79)/(2*n*dt); % abscissa viewing window
plot(freq,amp_spec(1:80)); grid on % plot amplitude spectrum
xlabel('Frequency (Hz)'); % 1 Herz = number of cycles/second
ylabel('Amplitude'); % amplitude as function of frequency

%Introduce Random noise, sample the signal with noise, and do Fourier
%transform
noise = randn(1,size(y,2)); % random noise
ey = y + noise; % samples with noise
eY = fft(ey); % Fourier transform of noisy signal
n = size(ey,2)/2; % use size for scaling
amp_spec = abs(eY)/n; % compute amplitude spectrum

% Plot of the waveform and amplitude spectrum

figure % plots in new window
subplot(2,1,1); % first of two plots
plot(t,ey); grid on % plot noisy signal with grid
axis([0 et -8 8]); % scale axes for viewing
xlabel('Time (s)'); % time expressed in seconds
ylabel('Amplitude'); % amplitude as function of time
subplot(2,1,2); % second of two plots
freq = (0:79)/(2*n*dt); % abscissa viewing window
plot(freq,amp_spec(1:80)); grid on % plot amplitude spectrum
xlabel('Frequency (Hz)'); % 1 Herz = number of cycles per second
ylabel('Amplitude'); % amplitude as function of frequency

%Visualize the output of the Fourier Transform
figure % new window for plot
plot(Y/n,'r+') % Fourier transform of original
hold on % put more on same plot
plot(eY/n,'bx') % Fourier transform of noisy signal

% Filter out the noise with Inverse Fourier Transform
fY = fix(eY/100)*100; % set numbers < 100 to zero
ifY = ifft(fY); % inverse Fourier transform of fixed data
cy = real(ifY); % remove imaginary parts
% Plot this corrected signal
figure % new window for plot
plot(t,cy); grid on % plot corrected signal
axis([0 et -8 8]); % adjust scale for viewing
xlabel('Time (s)'); % time expressed in seconds
ylabel('Amplitude'); % amplitude as function of time


