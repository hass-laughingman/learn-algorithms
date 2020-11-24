class TrieNode
  def initialize
    @children = {}
  end
end

class Trie
  def initialize
    @root = TrieNode.new
  end

  def search(word)
    current_node = root

    word.each do |char|
      # if the current node has child key with current character
      if current_node.children.key(char)

        # follow the child node
        current_node = current_node.children[char]
      else
        # if the current character isn't found amoung
        # the current node's children, our search word
        # must not be in the trie
        return nil
      end
    end
    current_node
  end

  def insert(word)
    current_node = root

    word.each do |char|
      # if the current node has child key with current character
      if current_node.children.key(char)
        # follow the child node
        current_node = current_node.children[char]
      
      else
        # if the current character isn't found amoung
        # the current node's children, we add
        # the character as a new child node
        new_node = TrieNode.new
        current_node.children[char] = new_node

        # follow this new node
        current_node = new_node
      end
    end

    # after inserting the entire word into the trie,
    # we add a * key at the end
    current_node.children['*'] = nil
  end
end
