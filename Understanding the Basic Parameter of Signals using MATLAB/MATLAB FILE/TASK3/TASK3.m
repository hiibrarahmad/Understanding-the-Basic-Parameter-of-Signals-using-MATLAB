t = 0:0.00001:0.005;
f = 1000;
A = cos(2*pi*f*t);
B = sin(2*pi*f*t);
C = A + B;
subplot(2,1,1);
plot(t, C);
title('sig3 = sig1 + sig2');
xlabel('Time');
ylabel('Sig3');
% spectrumanalysis
L = length(C);
sig3_w = abs(fft(C, L));
w = 25000*linspace(-1, 1, L);
subplot(2,1,2);
plot(w, sig3_w);