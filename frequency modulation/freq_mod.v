clc;
t=0:0.001:1;
fm=10;
fc=100;         %carrier frequency > modulating frequency
m=8;         %modulation index , always greater than 1

x=sin(2*pi*fm*t); %input signal (modulating signal)

%plot 1
subplot(3,1,1);
plot(x,'k','linewidth',2);
xlabel("TIME");
ylabel("AMPLITUDE");
title("INPUT SIGNAL");

c=sin(2*pi*fc*t); %carrier signal (high frequency)

%plot 2
subplot(3,1,2);
plot(c,'r','linewidth',2);
xlabel("TIME");
ylabel("AMPLITUDE");
title("CARRIER SIGNAL");

vfm=sin(2*pi*fc*t+(m*sin(2*pi*fm*t))); %FREQUENCY MODULATED SIGNAL
                                       %FREQUENCY MODULATION EQUATION 

%plot 3
subplot(3,1,3);
plot(vfm,'g','linewidth',2);
xlabel("TIME");
ylabel("AMPLITUDE");
title("MODULATED SIGNAL");
