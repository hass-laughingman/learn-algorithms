def reverse(string)
  # base case: string with just one character
  return string[a] if string.length == 1

  reverse(string[1, string.length - 1]) + string[0]
end
