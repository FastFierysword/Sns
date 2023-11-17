%Gibb's Phenomena
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
l=1;
p=-n:n;
i=1;
x1=[];
k=1;
for t=0:0.1:10
    x1(k)=0;
    for i=1:2*n+1
        x1(k)=x1(k)+a(i)*exp(j*p(i)*w*t);
    end
    k=k+1;
end
subplot(3,1,1);
stem((-n:n),abs(a));
title('Magnitude');
xlabel('k');
ylabel('a(k)');

subplot(3,1,2);
stem((-n:n),angle(a));
title('Phase');
xlabel('k');
ylabel('Phase a(k)');

subplot(3,1,3);
plot((0:0.1:10),x1);
title('Reconstructed Signal');
xlabel('t');
ylabel('x(t)');