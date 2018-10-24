! 9x9 multiplication table in Fortran90
! CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
! gfortran mt9x9.f90 -o mt9x9 ; ./mt9x9

program mt9x9
    implicit none
    integer :: i, j, k
    character(len=24) :: format
    do i = 1, 9, 3
    format = "(3(i1, a, i1, a, i2, a))"
    write(*,format) ((k, 'x', j, '=', k*j, char(9), k = i, i+2), j = 1, 9)
    write(*,*) 
    end do
end program mt9x9
