# Array Pair Sum

Write a program that

- takes an array of integers (array) and a target integer sum (sum)
- finds all the pairs of integers in the array that when added together equals the target sum
- return array of integer pairs (eg `[[2,3], [1,4]]`)

## Examples

### Finds pairs that sum to 5 in the array [1, 2, 3, 4, 5]

- input: `array: [1, 2, 3, 4, 5]`, `target: 5`
- output: `[[1, 4], [2, 3]]`
- explanation: `1 + 4 == 5`, `2 + 3 == 5`

### Finds pairs that sum to -2 in the array [0, -1, 2, -3, 1]

- input: `array: [0, -1, 2, -3, 1]`, `target: -2`
- output: `[[-3, 1]]`
- explanation: `-3 + 1 == -2`

### Finds pairs that sum to 3 in the array [11, -4, 7, 8, -10]

- input: `array: [11, -4, 7, 8, -10]`, `target: 3`
- output: `[[-4, 7]]`
- explanation: `-4 + 7 == 3`
