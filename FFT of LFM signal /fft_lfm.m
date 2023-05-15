Fs = 800;                            %sampling frequency
t = 0:1/Fs:4;
f = 0.01;                            %value by which frequency is increasing ,check for nyquist criteria for frequencies
fi =[];                              %store all the incremented frequencies in a matrix
temp=0;
for i=1:length(t)
    fi=[fi temp];
    temp=temp+f;
end
y = sin (2 * pi * t.*fi );


%plot 1
subplot(2,1,1);
plot(y);
ylabel("AMPLITUDE");
title("LFM SIGNAL");
grid

%plot 2
yf = fft(y);
subplot(2,1,2);
plot(abs(yf));
ylabel("MAGNITUDE");
title("FFT");
grid
