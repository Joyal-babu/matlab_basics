clear all;
close all;
clc;

t  = 0:0.001:1;
fm = 10;
fc = 100;
                   % modulation index m = Am/Ac  ( Am = amplitude of input/message signal
                   %                                Ac = amplitude of carrier signal      )
m1 = 0.5;          % under modulation (m < 1)
m2 = 1;            % 100% modulation  (m = 1)
m3 = 2;            % over modulation  (m > 1)    introduces envelope distortions , therefore it should be avoided

in_sig = sin(2*pi*fm*t);

%plot 1
subplot(5,1,1);
plot(in_sig,'k','linewidth',1);
xlabel("TIME");
ylabel("AMPLITUDE");
title("INPUT SIGNAL");

car_sig = sin(2*pi*fc*t);     %carrier signal (high frequency)

%plot 2
subplot(5,1,2);
plot(car_sig,'r','linewidth',1);
xlabel("TIME");
ylabel("AMPLITUDE");
title("CARRIER SIGNAL");

am1 = 1*(1+m1*sin(2*pi*fm*t)).*sin(2*pi*fc*t);   % (Ac*(1+m*sin(2*pi*fm*t))sin(2*pi*fc*t) - equation for amplitude modulation 

%plot 3
subplot(5,1,3);
plot(am1,'linewidth',1);
xlabel("TIME");
ylabel("AMPLITUDE");
title("UNDER MODULATED SIGNAL");

am2 = 1*(1+m2*sin(2*pi*fm*t)).*sin(2*pi*fc*t);

%plot 4
subplot(5,1,4);
plot(am2,'linewidth',1);
xlabel("TIME");
ylabel("AMPLITUDE");
title("100% MODULATED SIGNAL");

am3 = 1*(1+m3*sin(2*pi*fm*t)).*sin(2*pi*fc*t);

%plot 5
subplot(5,1,5);
plot(am3,'linewidth',1);
xlabel("TIME");
ylabel("AMPLITUDE");
title("OVER MODULATED SIGNAL");
