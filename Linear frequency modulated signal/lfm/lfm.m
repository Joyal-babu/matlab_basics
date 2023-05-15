Fs = 8000;                      %sampling frequency
t = 0:1/Fs:4;                   %duration of signal
f = 400;                        %starting frequency
fi =[];
temp=0;
for i=1:length(t)
    fi=[fi temp];
    temp=temp+0.000025*f;
end
y = sin (2 * pi * t.*fi );
plot(y)
