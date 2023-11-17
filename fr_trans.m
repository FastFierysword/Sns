% To perform Fourier Transform of Signal
clear all;
close all;
clc;
syms t w;
x=input('Enter a Function in t');
y=inline(x);
y1=@(t,w)y(t).*exp(-1i*w*t);
a=input('Enter lower time limit');
b=input('Enter upper time limit');
n=input('Enter range of w (-n:n)');
X=@(w)integral(@(t)y1(t,w),a,b);
A=0;
for w=-n:n
    A(i)=X(w);
    i=i+1;
end
subplot(1,2,1);
plot(-n:n, abs(A));
title('Magnitude Spectrum');
ylabel('X(w)');
xlabel('w');


subplot(1,2,2);
plot(-n:n, angle(A));
title('Phase Spectrum');
ylabel('Phase(w)');
xlabel('w');

%exponential,ramp