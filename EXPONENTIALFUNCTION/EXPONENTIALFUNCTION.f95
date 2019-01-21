PROGRAM EXPONENT
IMPLICIT NONE
INTEGER X,P
REAL Y

WRITE(*,*) 'INSERT VALUE OF X '
READ*, X
I=2
Y = EXPO(X)
P = FACT(I)
PRINT*, Y

CONTAINS
    FUNCTION FACT(N)
    INTEGER TEMP, N, FACT,I
    TEMP = 1
    DO I = 1,N
      TEMP = I*TEMP
      END DO
      FACT= TEMP
 END FUNCTION
 

CONTAINS 
    FUNCTION EXPO(N)
    INTEGER N,I
    REAL EXPO,Z
    Z= 0.0
    DO I = 1,100
      
      Z = (N**I)/FACT(I)
      Z = Z+z
      IF(Z < 10.0**(-6))THEN
        GO TO 22
        END IF
22        END DO
    EXPO = 1.0 + Z
    END FUNCTION
       

 


    END PROGRAM
    