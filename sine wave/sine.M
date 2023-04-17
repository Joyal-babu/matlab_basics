clear all;
close all;
clc;

  Fs     = 300e3;                                      %{ sampling frequency 300KHz
                                                          nyquist theorem  Fs>=2*Fsig
                                                          300 samples for every period }%
  Ts     = 1/Fs;                                       % sampling period
  Fsig   = 10e3;                                       % signal frequency  Tsig = 0.1msec
  Tdur   = 2*1e-4;                                     % duration of the signal , 10 signals

  tvec   = 0:Ts:Tdur-Ts;                               % starting from 0, incremented by Ts, upto Tdur-Ts
  x      = 10*sin(2*pi*Fsig*tvec);

  figure
  plot(tvec,x)
  xlabel('Time in [seconds]')
  ylabel('Amplitude')
  grid
