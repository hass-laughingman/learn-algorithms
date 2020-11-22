def number_of_paths(n)
  return 0 if n.negative?
  return 1 if [0, 1].include? n

  number_of_paths(n - 1) + number_of_paths(n - 2) + number_of_paths(n - 3)
end
