clc;
clear all;
close all;


r=2000; %resistance (ohms)
t = 1:10; %time (s)


v = [9.5,7.35,5.25,3.65,2.85,2.05,1.25,0.95,0.75,0.61]; %voltage


p = polyfit(t,log(v),1); %one dimensional polynomial fit
c = -1/(r*p(1)); %one dimensional polynomial fit


v0 = exp(p(2)); %find v0


tplot = 0:0.1:10;
vplot = v0*exp(-tplot./(r*c));

disp('Capacitance');
disp(c);


plot(t, v,'+', tplot, vplot)
xlabel('t(s)')
ylabel('Voltage')
title('Capacitor discharge curve')
grid on
