require('rspec')
require('anagram')

describe('String#anagram') do

  it('breaks two words into arrays and sorts those arrays alphabetically') do
    expect(('dog').anagram('cat')).to(include('[["d", "g", "o"], ["a", "c", "t"]]'))
end

  it('takes two words and tells the user if they are anagrams') do
    expect(('dog').anagram('odg')).to(include("are anagrams"))
  end
  it('takes two words and tells the user if they are not anagrams') do
    expect(('dog').anagram('cat')).to(include("are not anagrams"))
  end

  it('takes list of words and tells the user which ones are anagrams') do
    expect(('dog').anagram('odg, god, cat')).to(include('odg, god are anagrams'))
  end

end
