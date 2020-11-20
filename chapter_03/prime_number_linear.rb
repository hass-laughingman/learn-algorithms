# detect given number is a prime number
def is_prime?(number)
  (2...number).each do |item|
    if number % item == 0
      return false
    end
  end
  true
end

puts "Is 5 a prime number: #{is_prime?(5)}"
puts "Is 8 a prime number: #{is_prime?(8)}"
