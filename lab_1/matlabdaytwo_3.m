clc;
clear all;
close all;


t=-500:1:200;
imp_1=[zeros(1,500) ones(1,1) zeros(1,200)];
subplot(3,2,1)
plot(t,imp_1)

t= -5:1:5;
imp_1=[0 0 0 0 0 1 1 1 1 1 1]
subplot(3,2,2)
plot(t, imp_1)

t=-5:1:5;
imp_1=t
subplot(3,2,3)
plot(t,imp_1)

t6=-500:1:200;
y6=rand(1,701);
subplot(3,2,4);
plot(t6,y6)