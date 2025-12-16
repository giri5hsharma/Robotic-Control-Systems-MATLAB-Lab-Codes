clc;
clear all;
close all;


%TF = 10 / [s^3 + 7s^2 + 10s + 10]
[n1] = [0 0 0 10];
[d1] = [1 7 10 10];
sys1 = tf(n1,d1);

step(sys1);
s = stepinfo(sys1)
grid;
xlabel('Time');
ylabel('Magnitude');