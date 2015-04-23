class String
  define_method(:anagram) do |value|
    input = self
    both_words = []
    first_word = input.split("")
    second_word = value.split("")
    both_words.push(first_word)
    both_words.push(second_word)
    both_words
  end
end
