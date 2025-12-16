clc;
clear all;
close all;

num = [0 0 1];
den = [0.5 1.5 1];

sys = tf(num, den)

[num, den] = tfdata(sys)
[num, den] = tfdata(sys, 'v')

[z, p, k] = tf2zp(num, den)

pzmap(sys)
sgrid