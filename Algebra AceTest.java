import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class AlgebraAceTest {
    @Test
    void testSumTwoNumbers() {
        assertEquals(7, AlgebraAce.sumTwoNumbers(3, 4));
        assertEquals(3, AlgebraAce.sumTwoNumbers(5, -2));
        assertThrows(IllegalArgumentException.class, () -> AlgebraAce.sumTwoNumbers("3", 4));
        assertThrows(IllegalArgumentException.class, () -> AlgebraAce.sumTwoNumbers(3, "4"));
        assertThrows(IllegalArgumentException.class, () -> AlgebraAce.sumTwoNumbers("3", "4"));
    }
}

