PROGRAM factorial_calculation
  IMPLICIT NONE
  INTEGER :: n, result

  PRINT *, "Enter a positive integer:"
  READ *, n

  result = factorial(n)

  PRINT *, "The factorial of", n, "is", result
CONTAINS
  RECURSIVE INTEGER FUNCTION factorial(n) RESULT(f)
    INTEGER, INTENT(IN) :: n
    IF (n <= 1) THEN
      f = 1
    ELSE
      f = n * factorial(n - 1)
    ENDIF
  END FUNCTION factorial
END PROGRAM factorial_calculation