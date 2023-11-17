%representation of complex number and complex exponential and plotting it.
clear all;
close all;
clc;
th=-pi:0.001:pi;
x= exp(1i.*th);
a=real(x);
b=imag(x);
subplot(2,1,1);
plot3(a,b,th);
ylabel('imag(x)');
xlabel('real(x)');
zlabel('angular frequency(-pi to pi)');
title('Plotting real and imaginery part wrt angle(th)');
subplot(2,1,2);
plot(a,b);
ylabel('imag(x)');
xlabel('real(x)');
title('Plotting real and imaginery part');