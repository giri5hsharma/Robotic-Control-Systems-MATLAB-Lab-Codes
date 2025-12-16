clc;
clear all;
close all;


t = 0:1e-4:0.04;    %time vector
f = 100;
w = 2*pi*f;
Vs = sin(w*t);

%Task
t1 = length(t);
for i = 1:t1
    if Vs(i)>=0.6
        Vo(i) = 0.6;
    elseif Vs(i)>-0.6 && Vs(i)<0.6
        Vo(i) = Vs(i);
    else
        Vo(i) = -0.6;
    end
end
subplot(2,1,1), plot(t,Vs); title('v_{s}(t)'); grid on;
subplot(2,1,2), plot(t,Vo); title('v_{o}(t)'); xlabel('Time(sec)'); grid on;
