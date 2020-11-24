class WeightedGraphVertex
  attr_accessor :value, :adjacent_vertices

  def initialize(value)
    @value = value
    @adjacent_vertices = {}
  end

  def add_adjacent_vertex(vertex, weight)
    @add_adjacent_vertex[vertex] = weight
  end
end

class City
  attr_accessor :name, :routes

  def initialize(name)
    @name = name
    @routes = {}
  end

  def add_route(city, price)
    @routes[city] = price
  end
end


atlanta = City.new('Atlanta')
boston = City.new('Boston')
chicago = City.new('Chicago')
el_paso = City.new('El_paso')
denver = City.new('Denver')

atlanta.add_route(boston, 100)
atlanta.add_route(denver, 160)
boston.add_route(chicago, 120)
boston.add_route(denver, 180)
chicago.add_route(el_paso, 80)
denver.add_route(chicago, 40)
denver.add_route(el_paso, 140)

def dijkstra_shortest_path(starting_city, final_destination)
  cheapest_prices = {}
  cheapest_previous_stopover_city = {}

  # to keep the code simple, we'll use a basic array to keep track
  # of the known cities we haven't yet visited
  unvisted_cities = []

  # we keep track of the cities we've visited using a hash table
  # we would have used an but since we'll be doing lookups
  # a hash table is more efficient
  visted_cities = {}

  # we add the starting city's name as the first key inside the
  # cheapest_prices. it has a value of 0, since it costs nothing
  # to get there
  cheapest_prices[starting_city.name] = 0
  current_city = starting_city

  # this loop is the core of the algorithm. it runs as long as we can 
  # visit a city that we haven't visted yet
  while current_city
    # we add the current_city's name to the visted_cities hash to record
    # that city has been vistited. we also remove it from the list of
    # unvisted_cities
    visted_cities[current_city.name] = true
    unvisted_cities.delete(current_city)

    # iterate over each of the current_city's adjacent cities
    current_city.routes.each do |adjacent_city, price|
      # if new city discovered add it to the
      # list of unvisted_cities
      unvisted_cities << adjacent_city unless visted_cities[adjacent_city.name]

      # calculate the price of getting from the STARTING city to the
      # ADJACENT city using the CURRENT city has the second-to -last stop
      price_through_current_city = cheapest_prices[current_city.name] + price

      # if the price from the STARTING city to the ADJACENT city is the 
      # cheapest one found so far
      if !cheapest_prices[adjacent_city.name] ||
          price_through_current_city < cheapest_prices[adjacent_city.name]

        # update the two tables
        cheapest_prices[adjacent_city.name] = price_through_current_city
        cheapest_previous_stopover_city[adjacent_city.name] = current_city.name
      end
    end
     
    # visit the next unvisted city. choose the one that is cheapest
    # to get to from the STARTING city
    current_city = unvisted_cities.min do |city|
      cheapest_prices[city.name]
    end
  end

  # have completed the core algorith. At this pint, the
  # cheapest_prices contains all the cheapest prices to get to each
  # city from the starting city. However, to calculate the precise path
  # path to take from the starting city to the final destination,
  # we need to move on
  #
  # build the shortest path using a simple array
  shortest_path = []

  # to construct the shortest path, need to work backwards from the
  # final destination. begin with the final_destination as the current_city_name
  current_city_name = final_destination.name

  # loop until the starting city reached
  while current_city_name != starting_city.name
    # add each current_city_name encounter to the shortest path array
    shortest_path << current_city_name

    # use the cheapest_previous_stopover_city to follow each city
    # to it's previous stopover city
    current_city_name = cheapest_previous_stopover_city[current_city_name]
  end

  # cap things off by adding the starting city to the shortest path
  shortest_path << starting_city.name

  # reverse the output so we can see the path from the beignning to the end
  shortest_path.reverse
end
