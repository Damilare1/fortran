FUNCTION EXPO(N)
    INTEGER N,I
    REAL EXPO,Z
    Z= 0.0
    K=1
    DO I = 1,100
      K = K*I
      Z = (N**I)/K
      Z = Z+z
      IF(Z < 10.0**(-6))THEN
        GO TO 22
        END IF
22        END DO
    EXPO(N) = 1.0 + Z
       
