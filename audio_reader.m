clear all;
close all;
clc;
[y,Fs] = audioread("mysound.wav");
sound(y,Fs);
plot(y);