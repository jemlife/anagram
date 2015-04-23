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
    if first_word == second_word
      "#{sorted_words}
      #{input} and {#{value} are anagrams."
    else "#{sorted_words}
      #{input} and #{value} are not anagrams."
    end
  end
end
