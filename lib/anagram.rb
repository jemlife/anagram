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
    if array_of_anagrams.count > 1 && array_of_failure.count > 1
    "#{anagram_list.capitalize} are anagrams of #{input} and #{fail_list} are not"
  elsif array_of_anagrams.count > 1  && array_of_failure.count == 1
    "#{anagram_list.capitalize} are anagrams of #{input} and #{fail_list} is not"
  elsif array_of_anagrams.count == 1 && array_of_failure.count > 1
    "#{anagram_list.capitalize} is an anagram of #{input} and #{fail_list} are not"
  else "#{anagram_list.capitalize} is an anagram of #{input} and #{fail_list} is not"
  end
  end
end
