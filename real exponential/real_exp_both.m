 t = -2:0.01:2;
 sigma = 2;
 sigma1 = -2;

 x  = exp(sigma*t);
 x1 = exp(sigma1*t);

 plot(t, x, 'r', t, x1, 'b', 'linewidth', 2 )
 title( 'REAL EXP. SIGNAL'  )
 xlabel( 'Time' )
 ylabel( 'X(t)' )
