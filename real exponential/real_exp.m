 t = -2:0.01:2;
 sigma = 2;

 x = exp(sigma*t);

 plot(t, x, 'r', 'linewidth', 2 )
 title( 'REAL EXP. SIGNAL'  )
 xlabel( 'Time' )
 ylabel( 'X(t)' )
