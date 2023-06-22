/**
 * This function takes two numbers as arguments and returns their sum.
 *
 * @param num1 The first number to be added
 * @param num2 The second number to be added
 * @return The sum of the two numbers
 * @throws IllegalArgumentException if both arguments are not integers
 */
public static int sumTwoNumbers(int num1, int num2) {
    try {
        // Check if both arguments are integers
        if (!(num1 instanceof Integer) || !(num2 instanceof Integer)) {
            throw new IllegalArgumentException("Both arguments must be integers");
        }

        // Calculate and return the sum
        return num1 + num2;
    } catch (IllegalArgumentException e) {
        // Log the error
        System.out.println("Error: " + e.getMessage());
        return 0;
    }
}