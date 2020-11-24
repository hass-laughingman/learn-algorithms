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

  def collect_all_words(node = nil, word = '', words = [])
    # this method accepts three arguments. The first is the 
    # node whose descendants we're collecting words from.
    # The second argument, word, begins as an empty string,
    # and we add characters to it as we move through the trie.
    # The third argument, words, begins as an empty array,
    # and by the end of the function will contain all the words
    # from the trie
    #
    # The current node is the node passed in as the first paramter,
    # or the root node if none is provided
    current_node = node || root

    # we iterate through all the current node's children
    current_node.children.each do |key, value|
      # if the current key is *, it means we hit the end of a
      # complete word, so we can add it to our words array
      if key == '*'
        words << word

      # if we're still in the middle of a word
      else
        # recursively call this method on the child node
        collect_all_words(value, word + key, words)
      end
    end
    words
  end

  def autocomplete(prefix)
    current_node = search(prefix)

    return nil if current_node.nil?

    return collect_all_words(current_node)
  end
end


