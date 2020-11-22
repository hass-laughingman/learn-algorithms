def anagrams_of(string)
  # base case if the string is only one character,
  # return an array containing just a single-character string
  return [string[0]] if string.length == 1

  # create an array to hold all the anagrams
  collection = []

  # find all anagrams of the substring from the second character until
  # the end. For example, if the string is "abcs", the substring is "bcd",
  # so we'll find all anagrams of "bcd"
  substring_anagrams = anagrams_of(string[1, string.length - 1])

  # iterate over each substring
  substring_anagrams.each do |substring_anagram|

    # iterate over each index of the substring, from 0 until
    # one index past the end of the string
    substring_anagram.each_index do |index|

      # create a copy of the substring anagram
      copy = String.new(substring_anagram)

      # insert the first character of our string into the
      # substring anagram copy. Where it will go depends
      # on the index we're up to within this loop.
      # Then, take this new string and add it to our collection of anagrams
      collection << copy.insert(index, string[0])
    end
  end

  # return the entire collection of anagrams
  collection
end
