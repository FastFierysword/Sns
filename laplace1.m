%VIsualization of Laplace plane
clear all;
close all;
clc;
[sigma omega]=meshgrid(-20:0.1:20);
s=sigma + j*omega;
H=abs((s^2-25)./((s+5).*(s-10)));
mesh(sigma,omega,H);
xlabel('\sigma');
ylabel('\omega');
zlabel('\H(s)');
title('Laplace Plane');










%1/(s+2)   1/(s+4)(s^2+s+2)    s^2-25/(s+5)(s-10)