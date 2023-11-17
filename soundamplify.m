clear all;
close all;
clc;
a=audiorecorder (8000,8,1);
p='enter the time for which you want to proceed';
t=input(p);
disp ("start speaking!");
recordblocking (a,t);
q = getaudiodata(a);
l=length(q);
figure;
plot(q);
prompt = 'enter your choice : \n1 listen from begining : \n2 listen from end ';
x = input (prompt);
while(x)
if x==1
p1 = 'Enter attenuation factor (<1) or amplification factor (>1). Enter 1 for no change';
f=input (p1);
p2 = 'Enter delay time in sec.Enter 0 for no change ';
g=input (p2);
p5 = '\n1. for slow down \n2.speed up';
i = input (p5);
p3 = 'slow down factor or speed up factor';
e = input (p3);
if i == 2

r=[zeros(g*8000,l);q(1:e:end)];
sound (f.*r,8000);
figure;
plot (f.*r);
end
if i==1
c=length (q);
d=zeros (e*c,1);
d(e:e:end)=q;
r=[zeros (g*8000); d];
sound(f.*r,8000);
figure;
plot (f.*r);
end
end

if x==2
p1 = 'Enter attenuation factor (<1) or amplification factor (>1). Enter 1 for no change';
f=input (p1);
p2 = 'Enter delay time in sec.Enter 0 for no change ';
g=input (p2);
p5 = '\n1. for slow down \n2.speed up';
i = input (p5);
p3 = 'slow down factor or speed up factor';
e = input (p3);
q=flipud(q);
if i==2
r=[zeros(g*8000,l);q(1:e:end)];
sound (f.*r,8000);
figure;
plot (f.*r);
end
if i==1
c = length (q);
d = zeros (e.*c,1);
d(e:e:end)=q;
r = [zeros (g*8000); d];
sound (f.*r,8000);
figure;
plot (f.*r);
end
end
break;
end