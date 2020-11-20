# O(N) algorithms

# print items from array
def print_things(things)
  things.each do |thing|
    p "Here's a thing: #{thing}"
  end
end

print_things(%w[apples baboons cribs dulcimers])

