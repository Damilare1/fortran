PROGRAM INTEREST
REAL RATE,MRATE
INTEGER MONTH, INITIAL, EOFMB
4 FORMAT('MONTH' , T15, 'RATE', T40'RATE AMOUNT',T60, 'END OF MONTH BALANCE')
WRITE(*,4)

INITIAL = 100000
DO MONTH = 1, 12
  IF(INITIAL .LE. 110000)THEN
    RATE = 0.01
  ELSEIF( INITIAL > 110000 .AND. INITIAL .LE. 125000)THEN
    RATE = 0.015
  ELSEIF( INITIAL > 125000)THEN
    RATE = 0.02
  END IF

 MRATE = RATE*INITIAL/12
 EOFMB = EOFMB + MRATE 
 INITIAL = EOFMB + 1000
 
 WRITE(*,20) MONTH, RATE,MRATE, EOFMB
 20 FORMAT(I2, T20, F5.3,T40,F10.2, T60, I9)
 END DO

 END PROGRAM