clc;
clear all;
close all;
%EXPEIEMNT 10

s=tf('s');
sys= 1/(s^2+20*s+100)
fig1 = step(sys);
%from graph L is 0.025
%from graph T is 0.275

K=0.01;
L=0.025;
T=0.275;

a= (K*L)/T;
Ti= (2*L);
Td=(L/2);
Kp=(1.2/a);
Ki=(Kp/Ti);
Kd=(Kp*Td);
Cont=pid(Kp, Ki, Kd)
fig2 =step(feedback(Cont*sys,1)); 
%nature of graph is like that due to closed loop controller

subplot(1,2,1)
plot(fig1)
subplot(1,2,2)
plot(fig2)