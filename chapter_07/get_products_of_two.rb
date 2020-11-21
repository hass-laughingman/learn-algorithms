def get_products_of_two(array1, array2)
  products = []

  array1.each do |num1|
    array2.each do |num2|
      products.push(num1 * num2)
    end
  end

  return products
end

ary1 = [1, 2, 3]
ary2 = [10, 100, 1000]
puts "given #{ary1} and #{ary2}"
puts get_products_of_two(ary1, ary2).inspect
