t = 0:1/(50*100):2/5;
 x = 2*cos(2*pi*8*t).*cos(2*pi*10*t);     % beat doesn't happen
% x = 2*cos(2*pi*5*t).*cos(2*pi*100*t);   % beat happens
plot(t,x)
grid
xlabel('Time (s)')
ylabel('Amplitude')
