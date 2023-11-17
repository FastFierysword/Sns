clear all;
close all;
clc;
x1=0; x2=200;
h1=0; h2=200;
xi1=x1+h1;
xi2=x2+h2;
if xi1>xi2
    t=-ceil(xi1):ceil(xi1);
end
if xi2>xi1
    t=-ceil(xi2):ceil(xi2);
end
x=t;
h=t;
X=zeros(1,length(t));
H=zeros(1,length(t));
H(t<=h2&t>=h1)=h(t<=h2&t>=h1);
X(t<=x2&t>=x1)=x(t<=x2&t>=x1);
Y=zeros(1,length(t));
subplot(4,1,1);
stem(t,X,'r','linewidth',2); grid on;
title('x(t)');
subplot(4,1,2);
stem(t,H,'b','linewidth',2); grid on;
title('h(t)');
for i=xi1:xi2
    H1=fliplr(H);
    H1=circshift(H1,[0 i]);
    a=H1.*X;
    Y(t==i)=sum(a);
    subplot(4,1,3);
    plot(t,H1,'b',t,X,'r','linewidth',2);
    title('Convolution');
    subplot(4,1,4);
   stem(t,Y,'m','linewidth',2);
    title('y(t)');
    pause(0.01);
end
