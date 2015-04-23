require('rspec')
require('anagram')

describe('String#anagram') do
  it('takes two words and breaks into arrays') do
    expect(('act').anagram('cat')).to(eq([['a', 'c', 't'], ['c','a','t']]))
  end
end
