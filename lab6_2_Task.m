clc;
clear all;
close all;

%TF1
n1 = [0 10];
d1 = [0 1];
printsys(n1,d1)

%TF2
n2 = [0 1];
d2 = [1 0];
printsys(n2,d2)

%Feedback: 
n = [0 1];
d = [0 1];
printsys(n,d)

%TF3
n3 = [0 1];
d3 = [1 2];
printsys(n3,d3)

%TF4
n4 = [0 2];
d4 = [0 1];
printsys(n4,d4)

%TF5
n5 = [0 1];
d5 = [1 3];
printsys(n5,d5)

%TF6
n6 = [0 1];
d6 = [1 0];
printsys(n6,d6)

%TF7
n7 = [0 2];
d7 = [0 1];
printsys(n7,d7)

%Feedback 1 TF8 of TF1
[n8,d8] = feedback(n2,d2,n,d);
printsys(n8,d8)

%Series of TF1, TF8= TF9
[n9,d9] = series(n1,d1,n8,d8);
printsys(n9,d9)

%Series of TF9 and TF3 = TF10
[n10,d10] = series(n9,d9,n3,d3);
printsys(n10,d10)

%Parallel of TF4 and TF5 = TF11
[n11,d11] = parallel(n4,d4,n5,d5);
printsys(n11,d11)

%Parallel of TF11 and TF6 = TF12
[n12,d12] = parallel(n11,d11,n6,d6);
printsys(n12,d12)

%Series of TF10 and TF12 = TF13
[n13,d13] = series(n10,d10,n12,d12);
printsys(n13,d13)

%Feedback TF7 on TF13 = TF14 (Overall TF)
[n14,d14] = feedback(n13,d13,n7,d7);
disp('Overall Transfer Function: ')
printsys(n14,d14)

%Plot
sys1 = tf(n14,d14);
pzmap(sys1)
sgrid