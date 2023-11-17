%plot the fourier series coefficients for the following signals 
clear all;
close all;
clc;
ak1=[];
i=1;
for k=-20:20
    ak1(i)=(((-1)^k)-1)/((k.*pi).^2);
    ak2(i)=((1-(-1^k)))/(2.*pi.*1i.*k);
    ak3(i)=(-1)/(2.*1i.*pi.*k);
    ak4(i)=1/(k.*pi);
    ak8(i)=(((-1)^k)-1)/(-2.*pi.*1i.*k);
    ak9(i)=(1-exp(-1))/(1+(2.*pi.*1i.*k));
    ak10(i)=(2.*(-1)^k)/(pi*(1-(4.*k^2)));
    i=i+1;
end
l=-20:20;
ak5=zeros(1,length(l));
ak5(20:22)=[ 0.5.*exp((-1i*pi)/4),0,0.5.*exp((1i*pi)/4)];
ak6=zeros(1,length(l));
ak6(19:23)=[0.5, 0.5, 0, 0.5, 0.5];
ak7=zeros(1,length(l));
ak7(20:22)=[-0.5, 0.5, -0.5];
ak1(21)=0.5;
ak2(21)=0;
ak3(21)=0.5;
ak4(21)=0.5;
ak8(21)=0.5;
ak9(21)=1-(exp(-1));
ak10(21)=0;

subplot(5,2,1);
stem(l,abs(ak6));
xlabel('k');
ylabel('magnitude(ak6)');
title('1.');
subplot(5,2,2);
stem(l,angle(ak6));
xlabel('k');
ylabel('phase(ak6)');

subplot(5,2,3);
stem(l,abs(ak7));
xlabel('k');
ylabel('magnitude(ak7)');
title('2.');
subplot(5,2,4);
stem(l,angle(ak7));
xlabel('k');
ylabel('phase(ak7)');

subplot(5,2,5);
stem(l,abs(ak8));
xlabel('k');
ylabel('magnitude(ak8)');
title('1.');
subplot(5,2,6);
stem(l,angle(ak8));
xlabel('k');
ylabel('phase(ak8)');

subplot(5,2,7);
stem(l,abs(ak9));
xlabel('k');
ylabel('magnitude(ak9)');
title('1.');
subplot(5,2,8);
stem(l,angle(ak9));
xlabel('k');
ylabel('phase(ak9)');

subplot(5,2,9);
stem(l,abs(ak10));
xlabel('k');
ylabel('magnitude(ak10)');
title('1.');
subplot(5,2,10);
stem(l,angle(ak10));
xlabel('k');
ylabel('phase(ak10)');