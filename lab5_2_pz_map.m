clc;
clear all;
close all;

%sys = 64/[(s^2)+128s+64]

num = [0 0 64];
den = [1 128 64];

sys = tf(num,den)

[num,den] = tfdata(sys)
[num,den] = tfdata(sys,'v')

[z, p, k] = tf2zp(num,den)

subplot(4,2,1)
pzmap(sys)
sgrid

subplot(4,2,2)
impulse(sys)

subplot(4,2,3)
step(sys)

%sys_2 = [8(s^2)+18s+32]/[(s^3)+6(s^2)+14s+24]
sys_2 = tf([0 8 18 32],[1 6 14 24])

subplot(4,2,4)
step(sys_2)
grid on
stepinfo(sys_2)

%sys_3 = 1/[(s^2)+20s+3]
sys_3 = tf(1,[1 20 3])

%ramp input:

t=0:0.1:10;
alpha = 2;

ramp = alpha*t;

[y,t] = lsim(sys_3,ramp,t)

subplot(4,2,6)
plot(t,y)
title("Ramp Response")
xlabel('time')
ylabel("Amplitude")
grid on


subplot(4,2,5)
plot(t,ramp)
title("Ramp Signal")
xlabel('time')
ylabel("Amplitude")
grid on

%Parabolic:

para = alpha*t.^2;

[y,t] = lsim(sys_3,para,t)

subplot(4,2,8)
plot(t,y)
title("Parabolic Response")
xlabel('time')
ylabel("Amplitude")
grid on

subplot(4,2,7)
plot(t,para)
title("Parabolic Signal")
xlabel('time')
ylabel("Amplitude")
grid on

