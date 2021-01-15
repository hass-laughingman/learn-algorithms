package module01

// Sum will sum up all of the numbers passed
// in and return the result
func Sum(numbers []int) int {
	// return sumWithRecursion(numbers)
	return sumWithLoop(numbers)
}

func sumWithLoop(numbers []int) int {
	sum := 0
	for _, val := range numbers {
		sum += val
	}
	return sum
}

func sumWithRecursion(numbers []int) int {
	if len(numbers) == 0 {
		return 0
	}

	return numbers[0] + sumWithRecursion(numbers[1:])
}
