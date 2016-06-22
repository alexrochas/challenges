The Collatz conjecture is a conjecture in mathematics named after Lothar Collatz, who first proposed it in 1937. The conjecture is also known as the 3N + 1 conjecture. Take any natural number N. If N is even, divide it by 2 to get N / 2. If N is odd, multiply it by 3 and add 1 to obtain 3N + 1. Repeat the process (which is called “Half or Triple plus One”, or HOTPO) indefinitely. The conjecture is that no matter what number you start with, you will always eventually reach 1. This property is called oneness.
For example, the following sequence of numbers will be generated for N = 22:
22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1
For an input N, the cycle length of N is the number of numbers generated up to and including the 1. In the example above, the cycle length of 22 is 16. Given a number N, you are to determine the absolute difference between the cycle length of N and the number of even numbers generated from the sequence starting N.

Constraints:
1 <= T <= 100000
1 <= N <= 1000000

Input Format
The first line of input contains integer T indicating the number of test cases. T lines follow. Each T line contains a number N.

Output Format
For each value of N, display the absolute difference between the cycle length of N and the number of even numbers generated from the sequence starting N.

Sample Input
4
10
34
22
18237

Sample Output
2
4
5
55

Explanation
For test case N = 10; the sequence generated is 10 - 5 - 16 - 8 - 4 - 2 - 1 with cycle length of 7. There are 5 even numbers on the sequence which are 10, 16, 8, 4 and 2. The answer is 7 - 5 = 2.