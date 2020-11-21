def sample(array)
  first = array[0]
  middle = array[array.length / 2]
  last = array[-1]

  return [first, middle, last]
end


puts sample(%w[a b c d e f g h i j k l m n o p q r s t u v w x y z]).inspect
