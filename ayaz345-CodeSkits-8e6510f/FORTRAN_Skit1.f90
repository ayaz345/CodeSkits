PROGRAM circle_area
  IMPLICIT NONE
  REAL :: radius, area
  REAL, PARAMETER :: Pi = 3.14159

  PRINT *, "Enter the radius of the circle:"
  READ *, radius

  area = Pi * radius**2

  PRINT *, "The area of the circle is:", area
END PROGRAM circle_area

