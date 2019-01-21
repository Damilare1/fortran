PROGRAM EXPONENT
IMPLICIT NONE

REAL X,Y

WRITE(*,*) 'INSERT VALUE OF X '
READ*, X

Y = EXPO(X)

PRINT*, Y, EXP(X)


 
CONTAINS
FUNCTION EXPO(N)
    INTEGER I
    REAL EXPO,Z,TEMP ,N	,K ,FRAC
    TEMP= 0.0
    K=1.0
    DO I = 1,20
      K = K*I
      Z = (N**I)
	  FRAC = Z/K
      TEMP = TEMP+FRAC
      IF(ABS(FRAC) < 1E-6)THEN
        GO TO 22
        END IF
22        END DO
    EXPO = 1.0 + TEMP
    END FUNCTION
       

 


    END PROGRAM
    