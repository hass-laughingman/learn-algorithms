def word_builder(array)
  collection = []

  array.each do |i|
    array.each do |j|
      array.each do |k|
        if i != j && j != k && i != k
          collection.push(i + j + k)
        end
      end
    end
  end
  return collection
end


puts word_builder(%w[a b c d]).inspect
