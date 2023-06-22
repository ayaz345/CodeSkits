PROGRAM fibonacci_sequence
  IMPLICIT NONE
  INTEGER :: n, t1, t2, nextTerm, i

  t1 = 0
  t2 = 1

  PRINT *, "Enter the number of terms:"
  READ *, n

  PRINT *, "Fibonacci sequence:"
  DO i = 1, n
    PRINT *, t1
    nextTerm = t1 + t2
    t1 = t2
    t2 = nextTerm
  ENDDO

END PROGRAM fibonacci_sequence

