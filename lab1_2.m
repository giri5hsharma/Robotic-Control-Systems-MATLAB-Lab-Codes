clc;
clear all;
close all;



n=0:0.01:6*pi;
y=sin(n);
%hold on;
%figure;
subplot(3,3,1);
plot(n,y);
xlabel("Time in sec");
ylabel("Amplitude");
title("2D Sine wave plot (DTS)");

t_1=0:0.01:2*pi;
y_1=cos(t_1);
subplot(3,3,2);
plot(t_1,y_1);
xlabel("Time in Sec");
ylabel("Amplitude");
title("2D Cos Wave Plot (DTS)");

t=-500:1:200;
imp_1=[zeros(1,500) ones(1,1) zeros(1,200)];
subplot(3,3,3)
plot(t,imp_1)

t= -5:1:5;
imp_1=[0 0 0 0 0 1 1 1 1 1 1]
subplot(3,3,4)
plot(t, imp_1)

t=-5:1:5;
imp_1=t
subplot(3,3,5)
plot(t,imp_1)

t6=-500:1:200;
y6=rand(1,701);
subplot(3,3,6);
plot(t6,y6)