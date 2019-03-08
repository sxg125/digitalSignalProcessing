t = 0:1/(5*3):1; x = 15*cos(2*pi*3*t-.5*pi);
subplot(311)
plot(t,x,'.-'); grid
xlabel('Time in seconds')
ylabel('Amplitude')
 t = 0:1/(10*3):1; x = 15*cos(2*pi*3*t-.5*pi);
subplot(312)
 plot(t,x,'.-'); grid
xlabel('Time in seconds')
ylabel('Amplitude')
 t = 0:1/(50*3):1; x = 15*cos(2*pi*3*t-.5*pi);
subplot(313)
 plot(t,x,'.-'); grid
 xlabel('Time in seconds')
 ylabel('Amplitude')
