clear all;
close all;
clc;
%Recording Audio
a=audiorecorder (8000,8,1);
p='enter the time for which you want to proceed';
t=input(p);
disp('start speaking');
recordblocking (a,t);
play (a);
yn = getaudiodata(a);
yflip=flipud(yn);
subplot(3,1,1);
plot(yn);                %Plotting Original Signal
title('plot of yn');
xlabel('time');
ylabel('yn');
ye = (1/2)*(yn+yflip);  
subplot(3,1,2);
plot(ye);                   %Plotting even Signal
title('plot of even');
xlabel('time');
ylabel('y even');
yo= (1/2)*(yn-yflip);
subplot(3,1,3);
plot(yo);                  %Plotting odd Signal
title('plot of odd');
xlabel('time');
ylabel('y odd');