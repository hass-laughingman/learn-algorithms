def get_products(array)
  products = []

  # outer array
  (0...array.length).each do |i|
    # inner array in which j always begin on index to the right of i
    (i+1...array.length).each do |j|
      products.push(array[i] * array[j])
    end
  end
  return products
end


puts get_products([1, 2, 3, 4, 5, 6]).inspect
