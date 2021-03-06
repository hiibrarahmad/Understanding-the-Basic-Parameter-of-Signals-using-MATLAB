f = 1000; 
t= 0:0.00001:0.005; %TIME INTERVEL FROM 0 TO 0.005 
A = cos(2*pi*f*t);
subplot(2,1,1);
plot(t, A);
title('cos(2\pift)');
xlabel('Time');
ylabel('Sig1');
L = length(A);                 
% spectrum analysis
sig1_w = abs(fft(A, L));
w = 25000*linspace(-1, 1, L);
subplot(2,1,2);
plot(w, sig1_w);