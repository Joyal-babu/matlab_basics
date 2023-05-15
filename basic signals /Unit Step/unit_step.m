n = -10:0.1:10;

y = [n>=0];

subplot(2,1,1);
stem(n,y);
xlabel("Time samples");
ylabel("Amplitude");
title("DISCRETE");
axis equal

subplot(2,1,2);
plot(n,y);
xlabel("Time samples");
ylabel("Amplitude");
title("CONTINOUS");
axis equal
