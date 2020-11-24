class Vertex
  attr_accessor :value, adjacent_vertices

  def initialize(value)
    @value = value
    @adjacent_vertices = []
  end

  def add_adjacent_vertex(vertex)
    @adjacent_vertices << vertex
  end
end

def dfs_traverse(vertex, visited_vertices = {})
  # mark vertex as visited by adding it to the hash table
  visited_vertices[vertex.value] = true

  # print the vertex's value, so we can make sure the traversal works
  puts vertex.value

  # iterate through the current vertex's adjacent vertices
  vertex.adjacent_vertices.each do |adjacent_vertex|
    # ignore an adjacent vertex if already vistied
    next if visited_vertices[adjacent_vertex.value]

    # recursively call this method on the adjacent vertex
    dfs_traverse(adjacent_vertex, visited_vertices)
  end
end

def dfs(vertex, search_value, visited_vertices = {})
  # return the original vertex if it happens to be the
  # one we're searching for
  return vertex if vertex.value == search_value

  visited_vertices[vertex.value] = true

  vertex.adjacent_vertices.each do |adjacent_vertex|
    next if visited_vertices[adjacent_vertex.value]

    # if the adjacent vertex is the vertex we're search for,
    # just return that vertex
    return adjacent_vertex if adjacent_vertex.value == search_value

    # attempt to find the vertex we're searching for by recursively calling
    # this method on the adjacent vertex
    vertex_required = dfs(adjacent_vertex, search_value, visited_vertices)

    # if able to find the correct vertex using the above recursion
    # return the correct vertex
    return vertex_required if vertex_required
  end

  # if required vertex not found return nil
  nil
end

alice = Vertex.new('alice')
bob = Vertex.new('bob')
cynthia = Vertex.new('cynthia')

alice.add_adjacent_vertex(bob)
alice.add_adjacent_vertex(cynthia)
bob.add_adjacent_vertex(cynthia)
cynthia.add_adjacent_vertex(bob)
