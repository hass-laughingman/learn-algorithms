def passwords(n)
  (("a" * n)..("z" * n)).each do |str|
    puts str
  end
end

passwords(5)
