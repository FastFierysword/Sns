clear all;
close all;
clc;
a=2;
n= -50:50;
k=1;
for c=[-3, -2, -1, 1, 2, 3];
    subplot(3,2,k);
    plot(c.*exp(a.*n));
    k=k+1;
    title(['fig' num2str(k-1)]);
end