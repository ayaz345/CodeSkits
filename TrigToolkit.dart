import 'dart:math';

double degreesToRadians(double degrees) {
  /**
   * This function takes an angle in degrees and returns its equivalent in radians.
   * 
   * Parameters:
   * degrees (double): The angle in degrees
   * 
   * Returns:
   * double: The angle in radians
   */
  return degrees * pi / 180;
}

double radiansToDegrees(double radians) {
  /**
   * This function takes an angle in radians and returns its equivalent in degrees.
   * 
   * Parameters:
   * radians (double): The angle in radians
   * 
   * Returns:
   * double: The angle in degrees
   */
  return radians * 180 / pi;
}

double sinDegrees(double degrees) {
  /**
   * This function takes an angle in degrees and returns its sine value.
   * 
   * Parameters:
   * degrees (double): The angle in degrees
   * 
   * Returns:
   * double: The sine value of the angle
   */
  return sin(degreesToRadians(degrees));
}

double cosDegrees(double degrees) {
  /**
   * This function takes an angle in degrees and returns its cosine value.
   * 
   * Parameters:
   * degrees (double): The angle in degrees
   * 
   * Returns:
   * double: The cosine value of the angle
   */
  return cos(degreesToRadians(degrees));
}

double tanDegrees(double degrees) {
  /**
   * This function takes an angle in degrees and returns its tangent value.
   * 
   * Parameters:
   * degrees (double): The angle in degrees
   * 
   * Returns:
   * double: The tangent value of the angle
   */
  return tan(degreesToRadians(degrees));
}