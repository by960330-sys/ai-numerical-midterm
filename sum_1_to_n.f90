program sum_1_to_n
    implicit none
    integer(kind=8) :: n, i, total

    print '(A)', 'Please enter a positive integer N:'
    read(*, *) n

    total = 0
    do i = 1, n
        total = total + i
    end do

    print '(A, I0, A, I0)', 'Sum from 1 to ', n, ' = ', total
end program sum_1_to_n
