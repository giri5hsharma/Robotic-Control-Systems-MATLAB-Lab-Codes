clc;
clear all;
close all;


%ramp input:

t=0:0.1:10;
alpha = 2;

ramp = alpha*t;

sys_3 = tf(1,[1 20 3])

[y,t] = lsim(sys_3,ramp,t);

figure(1);
plot(t,y);
title("Ramp signal");
xlabel('time');
ylabel("Amplitude");
grid on;

figure(2);
plot(t,ramp);
title("Ramp response");
xlabel('time');
ylabel("Amplitude");
grid on;

