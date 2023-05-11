close all;
clear all;
clc;

Fs   = 100e6;                  %sampling frequency of 100MHz
t    = 0:1/Fs:1310710e-9;      %entire signal duration of 1310720ns (640 * 2048)
f    = 5e3;                    %incrementing frequency of 5KHz(0Hz to 10.24MHz)
fi   = [];
temp = 0;

for i=1:131072
  if(rem(i,64) == 0)           %64 samples of each frequency 
    fi   = [fi temp];
    temp = temp + f;
  else
    fi=[fi temp];
  endif
end

y = sin (2 * pi * t .* fi );   
plot(y)
