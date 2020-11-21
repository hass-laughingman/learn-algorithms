def countdown(number)
  puts number

  return if number.zero?

  countdown(number - 1)
end
