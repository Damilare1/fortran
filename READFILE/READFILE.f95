PROGRAM READFILE
INTEGER I, N,P,A,B,C,D,E,F,G
OPEN(UNIT = 1,FILE = "TOSINSNEWFILE.TXT",ACTION = "WRITE")
OPEN(UNIT = 2, FILE = "NUMBERS.TXT", ACTION ="READ")


DO I = 1, 7

READ(2,*) A

WRITE(*, *)A

END DO

END PROGRAM