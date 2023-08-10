/*
 * CS:APP Data Lab
 *
 * <Please put your name and userid here>
 *Dong Daojun 2216113179
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 */

extern int printf(const char *, ...);

/* Edit the functions below.  Good luck!  */
// 2
/*
 * implication - given input x and y, which are binary
 * (taking  the values 0 or 1), return x -> y in propositional logic -
 * 0 for false, 1 for true
 *
 * Below is a truth table for x -> y where A is the result
 *
 * |-----------|-----|
 * |  x  |  y  |  A  |
 * |-----------|-----|
 * |  1  |  1  |  1  |
 * |-----------|-----|
 * |  1  |  0  |  0  |
 * |-----------|-----|
 * |  0  |  1  |  1  |
 * |-----------|-----|
 * |  0  |  0  |  1  |
 * |-----------|-----|
 *
 *
 *   Example: implication(1L,1L) = 1L
 *            implication(1L,0L) = 0L
 *   Rating: 2
 */
long implication(long x, long y) {
    return ((y - x) >> 63) + 1;
}
/*
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96L) = 0x20L
 *   Rating: 2
 */
long leastBitPos(long x) {
    int i = 0;
    long sig = 1L << 63;
    while ((x - sig) && i < 64) {
        x = x << 1;
        i++;
    }
    if (i == 64) {
        return 0L;
    }
    return 1L << (64 - i - 1);
}
/*
 * distinctNegation - returns 1 if x != -x.
 *     and 0 otherwise
 *   Rating: 2
 */
long distinctNegation(long x) {
    return -(long)(x == (~x + 1L)) + 1L;
}
/*
 * fitsBits - return 1 if x can be represented as an
 *  n-bit, two's complement integer.
 *   1 <= n <= 64
 *   Examples: fitsBits(5,3) = 0L, fitsBits(-4,3) = 1L
 *   Rating: 2
 */
long fitsBits(long x, long n) {
    return x == ((x << (64L - n)) >> (64L - n));
}
// 3
/*
 * trueFiveEighths - multiplies by 5/8 rounding toward 0,
 *  avoiding errors due to overflow
 *  Examples:
 *    trueFiveEighths(11L) = 6L
 *    trueFiveEighths(-9L) = -5L
 *    trueFiveEighths(0x3000000000000000L) = 0x1E00000000000000L (no overflow)
 *  Rating: 4
 */
long trueFiveEighths(long x) {
    long x1, x2;
    x1 = (x >> 3) << 3;
    x2 = x - x1;
    x2 = (x2 << 2) + x2 + ((~(x >> 63) + 1) << 3) - (~(x >> 63) + 1);
    return (x1 >> 1) + (x1 >> 3) + (x2 >> 3);
}
/*
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x8000000000000000L,0x8000000000000000L) = 0L,
 *            addOK(0x8000000000000000L,0x7000000000000000L) = 1L,
 *   Rating: 3
 */
long addOK(long x, long y) {
    if ((x >> 63) + (y >> 63) == -1) {
        return 1L;
    }
    return (x >> 63) + (y >> 63) == -1 ||
           (((x >> 2) + (y >> 2)) >> 63) - ((x + y) >> 63) == 0;
}
/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5L) = 0L, isPower2(8L) = 1L, isPower2(0) = 0L
 *   Note that no negative number is a power of 2.
 *   Rating: 3
 */
long isPower2(long x) {
    long y = 1L;
    while ((y >> 63) == 0) {
        if (y == x)
            return 1L;
        y = y << 1;
    }
    return 0L;
}
/*
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 63
 *   Examples:
 *      rotateLeft(0x8765432187654321L,4L) = 0x7654321876543218L
 *   Rating: 3
 */
long rotateLeft(long x, long n) {
    if (n == 0L)
        return x;
    long y;
    y = (x >> (64 - n) << (64 - n));
    y = ((y >> 1) & (~(1L << 63))) >> (63 - n);
    return y + (x << n);
}
// 4
/*
 * isPalindrome - Return 1 if bit pattern in x is equal to its mirror image
 *   Example: isPalindrome(0x6F0F0123c480F0F6L) = 1L
 *   Rating: 4
 */
long isPalindrome(long x) {
    long y = 0L;
    long c = 1L << 32;
    int i = 33;
    while (c != 0L) {
        if (c == (1L) << 63 && (x & c) != 0L) {
            y = y + 1;
        } else
            y = y + ((x & c) >> ((i - 32) * 2 - 1));
        i++;
        c = c << 1;
    }
    if (y == (x & 0xffffffff)) {
        return 1L;
    } else
        return 0L;
}
/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5L) = 0L, bitParity(7L) = 1L
 *   Rating: 4
 */
long bitParity(long x) {
    int i = 1;
    long c = 1L;
    int cnt = 0;
    for (; i <= 64; i++) {
        if ((x & c) >> (i - 1) == 0) {
            cnt++;
        }
        c = c << 1;
    }
    return cnt % 2 == 1 ? 1L : 0L;
}
/*
 * absVal - absolute value of x
 *   Example: absVal(-1) = 1.
 *   You may assume -TMax <= x <= TMax
 *   Rating: 4
 */
long absVal(long x) {
    if (x >> 63 == 0) {
        return x;
    } else
        return (~x) + 1;
}
