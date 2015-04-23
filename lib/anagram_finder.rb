class Array
  define_method(:anagram_finder) do
    word_array = self
    super_word = word_array.at(0)
    word_array.shift()
    super_word_array = super_word.split("")
    list_array = []

    word_array.each() do |word|
      split_word = word.split("").sort()
      if super_word_array.sort().==(split_word)
        list_array.push(word)
      end
    end
    list_array
    end
end
