x=[1 2 3 4];
subplot(2,1,1);
plot(x,'ro--');        % r-red ,  o-o marker , - solid line , -- dashed line
title('Continuous');
subplot(2,1,2);
stem(x);
title('Discrete');

% plot - for plotting continous signal
% stem - for plotting discrete signal
