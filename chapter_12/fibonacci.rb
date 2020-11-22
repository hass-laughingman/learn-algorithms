def fibonacci(n)
  # base cases are the first two numbers in the series
  return n if [0, 1].include? n

  # return the sum of the previos two fibonacci numbers
  fibonacci(n - 2) + fibonacci(n - 1)
end
