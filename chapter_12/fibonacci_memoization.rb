def fibonacci(n, memo = {})
  return n if [0, 1].include? n

  # check the hash table (called memo) to see whether fibonacci(n)
  # was already computed or not
  if !memo[n]

    # if n is not in memo, compute fibonacci(n) with recursion
    # and then store the result in the has table
    memo[n] = fibonacci(n - 2, memo) + fibonacci(n - 1, memo)
  end

  # by now, fibonacci(n)'s result is certainly in memo. Perhaps
  # it was there before, or perhaps we just stored it there
  # in the previous line of code. But it's certainly there now.
  memo[n]
end


puts fibonacci(6)
