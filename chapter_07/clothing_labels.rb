def mark_inventory(clothing_items)
  clothing_options = []

  clothing_items.each do |item|
    (1..5).each do |size|
      clothing_options.push("#{item} Size: #{size}")
    end
  end

  return clothing_options
end

puts mark_inventory(%w[Purple\ Shirt Green\ Shirt]).inspect
