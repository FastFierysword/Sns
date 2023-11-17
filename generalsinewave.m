clear all;
close all;
clc;

 %ax(bt+c)+d
 %Input values
x = -pi:0.01:pi;
p1 = 'Enter a';
a= input (p1);
p2 = 'Enter b';
b= input (p2);
p3 = 'Enter c';
c= input (p3);
p4 = 'Enter d';
d= input (p4);
%Plotting Graph
plot((x.*(1/b))-c,(a.*sin(x))-d); %x(t)=Sinx
title('x(t)');
grid on;