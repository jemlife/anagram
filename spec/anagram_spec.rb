require('rspec')
require('anagram')

describe('String#anagram') do

  it('breaks two words into arrays and sorts those arrays alphabetically') do
    expect(('dog').anagram('cat')).to(eq([['d', 'g', 'o'], ['a', 'c', 't']]))
end
end
