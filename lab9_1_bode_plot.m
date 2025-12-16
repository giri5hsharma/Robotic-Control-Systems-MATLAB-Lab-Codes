clc;
clear all;
close all;

%To sketch the bode plot of the given system

n1 = [0 5];
d1_1 = conv([1 2 10], [0 1 2]);
d1 = conv([0 1 0], d1_1);
sys1 = tf(n1,d1)
[Gm, Pm, Wcg, Wcp] = margin(sys1);
Gm_dB = 20*log10(Gm);
fprintf('\nThe Gain Margin is: %4.2f dB\n', Gm_dB);
fprintf('\nThe Phase Margin is: %4.2f degree\n', Pm);
fprintf('\nThe Gain Crossover Frequency is: %4.2f rad/sec\n', Wcg);
fprintf('\nThe Phase Crossover Frequency is: %4.2f rad/sec\n', Wcp);
subplot(2,2,1)
bode(sys1)
grid;
%The Given system is stable because Gain Margin and Phase Margin is
%positive

n2 = [200 600];
d2 = conv([1 2 0], [1 4 60]);
sys2 = tf(n2,d2)
[n2_1,d2_1] = feedback(n2,d2,1,1) %considering unity feedback
sys2_1 = tf(n2_1,d2_1)
[Gm, Pm, Wcg, Wcp] = margin(sys2_1);
Gm_dB = 20*log10(Gm);
fprintf('\nThe Gain Margin is: %4.2f dB\n', Gm_dB);
fprintf('\nThe Phase Margin is: %4.2f degree\n', Pm);
fprintf('\nThe Gain Crossover Frequency is: %4.2f rad/sec\n', Wcg);
fprintf('\nThe Phase Crossover Frequency is: %4.2f rad/sec\n', Wcp);
%The Given System is unstable because Gain Margin and Phase Margin is
%negative
disp('The roots of the charac eq. are - ');
%r = roots(d2_1)
subplot(2,2,2)
bode(sys2_1)
grid;

n3 = [0 5];
d3 = conv([0.25 1 0], [0 0.5 1]);
sys3 = tf(n3,d3)
[Gm, Pm, Wcg, Wcp] = margin(sys3);
Gm_dB = 20*log10(Gm);
fprintf('\nThe Gain Margin is: %4.2f dB\n', Gm_dB);
fprintf('\nThe Phase Margin is: %4.2f degree\n', Pm);
fprintf('\nThe Gain Crossover Frequency is: %4.2f rad/sec\n', Wcg);
fprintf('\nThe Phase Crossover Frequency is: %4.2f rad/sec\n', Wcp);
subplot(2,2,3)
bode(sys3)
grid;
%The Given system is stable because Gain Margin and Phase Margin is
%positive