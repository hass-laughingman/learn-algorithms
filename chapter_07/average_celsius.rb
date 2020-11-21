def average_celsius(fahrenheit_readings)
  # collect celsius number here
  celsius_numbers = []

  # convert each reading to celsius and add to array
  fahrenheit_readings.each do |fahrenheit_reading|
    celsius_conversion = (fahrenheit_reading - 32) / 1.8
    celsius_numbers.push(celsius_conversion)
  end

  # get sum of all celsius numbers
  sum = 0.0

  celsius_numbers.each do |celsius_number|
    sum += celsius_number
  end

  # return mean average
  return sum / celsius_numbers.length
end

puts average_celsius([100, 101, 86, 95, 60, 45])
