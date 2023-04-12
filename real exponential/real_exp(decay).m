t = -2:0.01:2;
 sigma1 = -1;
 amp = 10;

 x1 = amp*exp(sigma1*t);

 plot(t, x1, 'b', 'linewidth', 2 )
 title( 'REAL EXP. SIGNAL'  )
 xlabel( 'Time' )
 ylabel( 'X(t)' )
