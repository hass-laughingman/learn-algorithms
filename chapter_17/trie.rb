class TrieNode
  def initialize
    @children = {}
  end
end

class Trie
  def initialize
    @root = TrieNode.new
  end
end
