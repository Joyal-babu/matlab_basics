fs=22400;          %sine wave sampling frequency
t=0:1/fs:4;

 x=sin(2*pi*200*t);
 sound(x,20500);   %sound(y,Fs), sends the signal in vector y (with sample frequency Fs) to the speaker on PC

 y=sin(2*pi*300*t);
 sound(y,20500);

sound([y;x],20500); %play different sounds simultaneously in two ears
