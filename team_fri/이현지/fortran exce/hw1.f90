       REAL :: g, E0, E1, pi, i

       pi = 3.141592

       Do i = 1, 365.
        g = 2*pi*(i-1)/365.
        E0 = 1.00011 + 0.034221*cos(g) + 0.001280*sin(g) + 0.000719*cos(2*g) + 0.000077*sin(2*g)
        E1 = 1 + 0.033*cos(2*pi*i/365.)

       WRITE(*,*), i, E0, E1

       END Do

       END 