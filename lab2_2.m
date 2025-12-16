clc;
clear all;
close all;

%print TF1
n1 = [0 1];
d1 = [1 1];
disp('TF1 is: ');
printsys(n1,d1)

%print TF2
n2 = [1 2];
d2 = [0 1];
disp('TF2 is :');
printsys(n2,d2)

%print TF3
n3 = [0 1 0];
d3 = [1 0 2];
disp('TF3 is :');
printsys(n3,d3)

%print TF4
n4 = [1 0];
d4 = [0 1];
disp('TF4 is :');
printsys(n4,d4)

%Obtain TF5-Block reduction from parallel TF1 and TF2
[n5,d5] = parallel(n1,d1,n2,d2);
disp('TF5 is :');
printsys(n5,d5)

%Obtain TF6-Block reduction from feedback loop of TF3 and TF4
[n6,d6] = feedback(n3,d3,n4,d4);
disp('TF6 is :');
printsys(n6,d6)

%Obtain TF7-Block Reduction from Series TF5 and TF6
[n7,d7] = series(n5,d5,n6,d6);
disp('Overall Transfer Functon, TF7 is: ');
printsys(n7,d7)

%Plot Poles and Zeroes
sys1 = tf(n7,d7);
pzmap(sys1)
sgrid