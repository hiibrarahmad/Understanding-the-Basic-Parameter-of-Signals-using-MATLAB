t = 0:0.0001:0.005;
F1 = 1000;
F2 = 2000;
F3 = 3000;
A = cos(2*pi*F1*t) + (0.5*cos(2*pi*F2*t) + (pi/4)) + (0.3 * cos(2*pi*F3*t) -(pi/4));
subplot(2,1,1);
plot(t, A);
title('sig10 = cos(2\pif1t) + 0.5cos(2\pif2t + \pi/4) + 0.3cos(2\pif3t -\pi/4');
xlabel('Time');
ylabel('Sig10');
L = length(A);       
% spectrum analysis
sig10_w = abs(fft(A, L));
w = 2500*linspace(-1, 1, L);
subplot(2,1,2);
plot(w, sig10_w);