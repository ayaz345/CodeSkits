PROGRAM quadratic_roots
  IMPLICIT NONE
  REAL :: a, b, c, determinant, root1, root2

  PRINT *, "Enter the coefficients a, b, and c:"
  READ *, a, b, c

  determinant = b**2 - 4.0 * a * c

  IF (determinant >= 0.0) THEN
    root1 = (-b + SQRT(determinant)) / (2.0 * a)
    root2 = (-b - SQRT(determinant)) / (2.0 * a)

    PRINT *, "The roots are:"
    PRINT *, "Root 1:", root1
    PRINT *, "Root 2:", root2
  ELSE
    PRINT *, "The equation has no real roots."
  ENDIF

END PROGRAM quadratic_roots

