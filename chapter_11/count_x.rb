def count_x(string)
  # base case
  return 0 if string.length.zero?
  if string[0] == 'x'
    return 1
  else
    return 0
  end

  if string[0] == 'x'
    1 + count_x(string[1, string.length - 1])
  else
    count_x(string[1, string.length - 1])
  end
end
