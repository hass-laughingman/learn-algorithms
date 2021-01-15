package module01

func GCD(a, b int) int {
	for {
		if b == 0 {
			return a
		}
		a, b = b, a%b
	}
}
