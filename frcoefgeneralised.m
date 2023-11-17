%Generalize code to determine fourier series coefficients of continuous time signal.
clear all;
close all;
clc;
syms t;
n=input('Enter the max. limit of k');
w=input('Enter Angular Frequency');
T=(2.*pi)/w;
q=input('Enter a function in t');
y=inline (q);
a=[];
i=1;
for k=-n:n
    x=@(t)(y(t).*exp(-j*k*w*t));
    a(i)=integral(x,0,T)/T;
    i=i+1;
end
subplot(2,1,1);
stem((-n:n),abs(a));
title('Magnitude');
xlabel('k');
ylabel('a(k)');


subplot(2,1,2);
stem((-n:n),angle(a));
title('Phase');
xlabel('k');
ylabel('Phase a(k)');