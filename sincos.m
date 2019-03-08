t=0:.01:2;
x = 1.5*sin(2*pi*5*t);
y = 1.5*cos(2*pi*5*t);
figure
plot(t,x)
hold on
plot(t,y)
grid on
xlabel('Time in seconds')
ylabel('Amplitude')
title('Sine Cosine Wave')
legend('sine', 'cosine')
hold off
