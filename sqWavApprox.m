N = 15; k = -N:2:N;
ak = 1./(j*pi*k);
 fk = 1*[0 k];
 ak = [1/2 ak];
[x,t] = fs_synth(fk, ak, 50*15, 3);
plot(t,real(x)) % note x is not purely real
 grid % due to numerical imperfections
xlabel('Time (s)')
ylabel('Amplitude')
