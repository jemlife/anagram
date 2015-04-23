class String
  define_method(:anagram) do |value|
    input = self
    sorted_words = []
    first_word = input.split("")
    second_word = value.split("")
    first_word.sort!()
    second_word.sort!()
    sorted_words.push(first_word)
    sorted_words.push(second_word)
    sorted_words
  end
end
