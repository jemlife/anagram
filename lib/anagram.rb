class String
  define_method(:anagram) do |values|
    input = self
    sorted_words = []
    compared_word = []
    array_of_anagrams = []
    array_of_failure = []
    first_word = input.split("").sort!
    other_words = values.split(", ")
    other_words.each() do |word|
      compared_word = word.split("")
      if compared_word.sort! == first_word
        array_of_anagrams.push(word)
      else array_of_failure.push(word)
      end
    end
    anagram_list = array_of_anagrams.join(", " )
    fail_list = array_of_failure.join(", ")
    "#{anagram_list} are anagrams of #{input}, #{fail_list} are not"
  end
end
