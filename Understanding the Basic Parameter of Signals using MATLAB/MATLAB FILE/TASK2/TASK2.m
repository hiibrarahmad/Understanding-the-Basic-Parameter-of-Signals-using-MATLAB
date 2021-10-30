f = 1000;
t= 0:0.0001:0.005;
b = sin(2*pi*f*t);
subplot(2,1,1);
plot(t, b);
title('sin(2/pift)');
xlabel('Time');
ylabel('Sig2');
L = length(b);         
% spectrum analysis
sig2_w = abs(fft(b, L));
w = 25000*linspace(-1, 1, L);
subplot(2,1,2);
plot(w, sig2_w);