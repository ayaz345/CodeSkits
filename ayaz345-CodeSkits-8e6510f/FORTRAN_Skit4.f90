PROGRAM matrix_multiplication
  IMPLICIT NONE
  INTEGER :: i, j, k, m, n, p, q
  REAL, DIMENSION(10, 10) :: A, B, C

  PRINT *, "Enter the order of the first matrix (m x n):"
  READ *, m, n

  PRINT *, "Enter the order of the second matrix (p x q):"
  READ *, p, q

  IF (n /= p) THEN
    PRINT *, "Matrix multiplication is not possible."
    STOP
  ENDIF

  PRINT *, "Enter the elements of the first matrix:"
  DO i = 1, m
    DO j = 1, n
      READ *, A(i, j)
    ENDDO
  ENDDO

  PRINT *, "Enter the elements of the second matrix:"
  DO i = 1, p
    DO j = 1, q
      READ *, B(i, j)
    ENDDO
  ENDDO

  DO i = 1, m
    DO j = 1, q
      C(i, j) = 0.0
      DO k = 1, n
        C(i, j) = C(i, j) + A(i, k) * B(k, j)
      ENDDO
    ENDDO
  ENDDO

  PRINT *, "Result:"
  DO i = 1, m
    DO j = 1, q
      PRINT *, C(i, j)
    ENDDO
  ENDDO
END PROGRAM matrix_multiplication

