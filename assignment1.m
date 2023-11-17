clear all;
close all;
clc;
x = -pi:0.01:pi;

subplot (4,2,[1 2]);
plot(x,sin(x)); %x(t)=Sinx
title('Original Signal x(t)');
ylim ([-2 2]);
xlim ([-4 4]);
grid on;

prompt = 'Enter your choice \n1.x(2t) \n2.x(2t+3) \n3.x(0.5t+3) \n4.4x(0.5t-3) \n5.-2x(-3t-4) \n6.-2x(-3(t-2))';
x= input (prompt);
while(x)   
    
    if x==1
        subplot (4,2,[5 6]);
        plot(x.*0.5,sin(x));
        title('x(2t)'); %x(2t)
        xlim ([-2 2]);
        ylim ([-2 2]);
        grid on;
        break;

    elseif x==2
        
        subplot (4,2,[5 6]);
        plot((x.*0.5)-3,sin(x));
        title('x(2t+3)'); %x(2t+3)
        xlim ([-6 2]);
        ylim ([-2 2]);
        grid on;
    end;

    if x==3
        subplot (4,2,[5 6]);
        plot((x.*2)-3,sin(x));
        title('x(0.5t+3)'); %x(0.5t+3)
        xlim ([-10 4]);
        ylim ([-2 2]);
        grid on;
    end;

    if x==4
        subplot (4,2,[5 6]);
        plot((x.*2)+3,4.*sin(x));
        title('4x(0.5t-3)'); %4x(0.5t-3)
        xlim ([-4 10]);
        ylim ([-5 5]);
        grid on;
    end;
        
    if x==5
        subplot (4,2,[5 6]);
        plot((-0.33334.*x)+4,-2.*sin(x));
        title('-2x(-3t-4)'); %-2x(-3t-4)
        xlim ([2 6]);
        ylim ([-3 3]);
        grid on;
    end;
  
    if x==6
        subplot (4,2,[5 6]);
        plot(-0.33334.*(x+2),-2.*sin(x));
        title('-2x(-3(t-2))'); %-2x(-3(t-2))=-2x(-3t+6)
        xlim ([-4 4]);
        ylim ([-3 3]);
        grid on;
    end;
end