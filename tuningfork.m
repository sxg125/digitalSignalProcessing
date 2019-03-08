
% audioread has gstreamer dependency:
% module load matlab/R2016b
% module load gstreamer/0.10.36

% Read wave data and returns sampled data wave (amplitude) and a sample rate fs of that data
[wave,fs]=audioread('tuning_fork_A4.wav');
% Listen to the sound: 
%soundsc(wave,fs);
figure(1);

% Here is the setup for the time domain array from 1 to (length(wave)-1)/fs, by increments of 1/fs.  
% The variable fs is the sampling frequency or the number of samples per second.  
% The 1/fs is expressing the increment, note that one divided by the sampling frequency leaves us with a number in seconds.  
% The upper bound is the number of data points divided by the sampling frequency.  
% The result is the total amount of seconds contained in the wave file.

t=0:1/fs:(length(wave)-1)/fs;

% Plot Amplitude vs time
plot(t,wave);
title('Wave File');
ylabel('Amplitude');
xlabel('Time (in seconds)');

figure(2);
% Power Spectral Density (PSD) function plot - psd (wave, Nfft, fs)
psd(wave,2^12,fs);

figure(3);
% Plot Spectrogram function
spectrogram(wave,2^10,50,[],8000);
