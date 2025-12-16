clc;
clear all;
close all;


[n1] = [0 1 1];
[d1] = [1 1 -1];

%[n2,d2] = feedback(n1,d1,0,1);
printsys(n1,d1)

step(n1,d1);
grid;
xlabel('Time');
ylabel('Magnitude');