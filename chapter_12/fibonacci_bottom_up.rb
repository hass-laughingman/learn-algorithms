def fibonacci(n)
  return 0 if n.zero?

  # a and b start with the first two numbers in the
  # series, recspectively
  a = 0
  b = 1

  # loop from 1 until n
  (1...n).each do |i|

    # a and b each move up to the next numnbers in the series
    # namely, b becomes the sum of b and a, a becomes what b used to be
    b, a = b + a, b
  end

  b
end


puts fibonacci(6)
