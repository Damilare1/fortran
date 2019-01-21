 program matrix addition,subtraction and multiplication
 !Farai Oluwatosin
 !187032
 !Civil Engineering
dimension::A(3,3),B(3,3),D(3,3),S(3,3)
data A/1.,2.,3.,4.,5.,6.,7.,8.,9./,&
     B/1.,2*2.,3*3.,3*4./
open(Unit=1, file = "matrixoutput.txt", action = "write")
     do i=1,3
       do j=1,3
         S(i,j)=A(i,j)+B(i,j)
         D(i,j)=A(i,j)-B(i,j)
       end do
     end do
write(1,*) "matrix A"
write(1,10)((A(i,j),j=1,3),i=1,3)
!write(*,10)((A(i,j),j=1,3),i=1,3)
10 format(3F5.1)
write(1,*) "matrix B"
write(1,10)((B(i,j),j=1,3),i=1,3)
!write(*,10)((B(i,j),j=1,3),i=1,3)
write(1,*) "matrix S = A+B"
write(1,*)
write(1,10)((S(i,j),j=1,3), i=1,3)
write(1,*) "matrix D = A-B"
write(1,*)
write(1,10)((D(i,j),j=1,3), i=1,3)
write(1,*)
write(1,*) "matrix C = A*B"
C = matmul(A,B)
write(1,10) C
write(1,*)

!15 format(5x,"matrix S",7x,"matrix D"/(6F5.1))
stop
end matrix_algebra