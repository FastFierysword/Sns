clear all;
close all;
clc;
x=linspace(-1,1,100);
y=sqrt (1-(x.^2));
a=linspace(2,4,100);
b=sqrt(1-(a-2).^2);
c=linspace(1,1.5,25);
y1=2.*(c);
d=linspace(1.5,2,25);
y2=(d-2)./0.5;
z1=[x c];
z2=[z1 d];
z=[z2 a];
q1=[y y1];
q2=[q1 y2];
q=[q2 b];

subplot(4,2,[1 2]);
plot(z, q);
title ('Original Signal x(t)');
xlim ([-2 5]);
ylim ([-2 4]);
grid on;

subplot (4,2,3);
plot(z.*0.5,q);
title('x(2t)'); %x(2t)
xlim ([-2 4]);
ylim ([-2 4]);
grid on;
subplot(4,2,4);
plot(z-2,q);
title ('x(t+2)'); %x(t+2)
xlim ([-4 4]);
ylim ([-2 4]);
grid on;

subplot(4,2,5);
plot(z,2.*q);
title ('2x(t)'); %2x(t)
xlim ([-2 6]);
ylim ([-4 6]);
grid on;

subplot(4,2,6);
plot(z,2+q);
title ('x(t)+2'); %x(t)+2
xlim ([-2 6]);
ylim ([0 6]);
grid on;

subplot(4,2,7);
plot(-z,q);
title ('x(-t)'); %x(-t)
xlim ([-6 2]);
ylim ([-2 4]);
grid on;

subplot(4,2,8);
plot(z,-q);
title ('-x(t)'); %-x(t)
xlim ([-2 6]);
ylim ([-4 4]);
grid on;