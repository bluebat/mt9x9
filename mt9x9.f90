! 9x9 multiplication table in Fortran90
! CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
! gfortran mt9x9.f90 -o mt9x9 ; ./mt9x9

PROGRAM mt9x9
    IMPLICIT NONE
    INTEGER :: i, j, k
    CHARACTER(LEN=25) :: FORMAT
    DO i = 1, 9, 3
    FORMAT = "(3(I1, A, I1, A, I2, A))"
    WRITE(*,FORMAT) ((k, 'x', j, '=', k*j, CHAR(9), k = i, i+2), j = 1, 9)
    WRITE(*,*) 
    END DO
END PROGRAM mt9x9
