clear all;
close all;
clc;
a=audiorecorder (8000,8,1);
p='enter the time for which you want to proceed';
t=input(p);
disp('start speaking');
recordblocking (a,t);
play (a);
q = getaudiodata(a);
l= length(1);
figure;
plot(q);
prompt = 'Enter your choice : \n1. Listen from Beginning \n2.Listen from end';
x= input (prompt);
while(x)
    if (x==1)
        p1 = 'Enter attenuation factor (<1) or amplification factor (>1).Enter 1 for no change';
        f=input (p1);
        p2 = 'Enter delay time in seconds. Enter 0 for no change';
        g=input (p2);
        p5 = '\n1. for slow down \n2.speed down';
        i=input (p5);
        p3 = 'Slow down factor or speed up factor';
        e = input (p3);
        if i==2
            r = [zeros(g*8000,1);q(1:e:end)];
             sound (f.*r,8000);
             figure;
             plot (f.*r);
             break;
        elseif i==1
                c = length (q);
                d = zeros (e*c,1);
                d(e:e:end)=q;
                r =[zeros(g*8000,1);d];
                sound (f.*r,8000);
                figure;
                plot (f.*r);
                break;
        elseif e==1
                r =[zeros(g*8000,1);q(1:e:end)];
                sound (f.*r,8000);
                figure;
                plot (f.*r);
                break;
            end
    end
        if (x==2)
        p1 = 'Enter attenuation factor (<1) or amplification factor (>1).Enter 1 for no change';
        f = input (p1);
        p2 = 'Enter delay time in seconds. Enter 0 for no change';
        g=input (p2);
        p5 = '\n1. for slow down \n2.speed down';
        i=input (p5);
        p3 = 'Slow down factor or speed up factor';
        e = input (p3);
        q = flipud(q);
        if (i==2)
            r =[zeros(g.*8000,1);q(1:e:end)];
             sound (f.*r,8000);
             figure;
             plot (f.*r);
             break;
        elseif i==1
                c = length (q);
                d = zeros (c.*e,1);
                d(e:e:end)=q;
                r =[zeros(g*8000,1);d];
                sound (f.*r,8000);
                figure;
                plot (f.*r);
                break;
            else 
                r =[zeros(g*8000,1);q(1:e:end)];
                sound (f.*r,8000);
                figure;
                plot (f.*r);
                break;
            end
        end
        break;
        p4 = 'Wrong choice || Enter correct choice' ;
        disp (p4);
        x=input(prompt);
        break;
end
