close all;
clear all;
clc;

%MATLAB CODE FOR GETTING 64 SAMPLES PER EACH FREQUENCIES


Fs   = 100e6;                  %sampling frequency of 100MHz
t    = 0:1/Fs:1310720e-9;      %entire signal duration of 1310720ns (640 * 2048)
f    = 5e3;                    %incrementing frequency of 5KHz(0Hz to 10.24MHz)
fi   = [];
temp = 0;

for i=1:131073
  if(rem(i,64) == 0)           %64 samples of each frequency
    fi   = [fi temp];
    temp = temp + f;
  else
    fi = [fi temp];
  endif
end

y = sin (2 * pi * t .* fi );
%z = num2hex(y);
fprintf('%f\n',y);

%plot 1
subplot(2,1,1);
plot(t,y,'b');
xlabel("TIME");
ylabel("AMPLITUDE");
title("LFM SIGNAL");
grid
