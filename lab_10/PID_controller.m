clc; 
clear all;
close all;
%EXPRERIMENT 9

n1=[1];
d1=[3 5 1];
x=tf(n1,d1);

% use 'pidTuner 'to export the C PID model

%BEFORE PID
step(feedback(C*x,1))

%AFTER PID
sys = (feedback(C*x,1))

