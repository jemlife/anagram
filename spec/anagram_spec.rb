require('rspec')
require('anagram')

describe('String#anagram') do

  it('breaks two words into arrays and sorts those arrays alphabetically') do
    expect(('dog').anagram('cat')).to(include('[["d", "g", "o"], ["a", "c", "t"]]'))
end

  it('takes two words and tells the user if they are anagrams') do
    expect(('dog').anagram('odg')).to(include("are anagrams"))
  end
end
