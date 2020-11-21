def word_builder(array)
  collection = []

  array.each do |i|
    array.each do |j|
      if i != j
        collection.push(i + j)
      end
    end
  end
  return collection
end


puts word_builder(%w[a b c d]).inspect
