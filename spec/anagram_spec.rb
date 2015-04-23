require('rspec')
require('anagram')

describe('String#anagram') do
  it('takes two words and breaks into arrasys') do
    expect('act'.anagram()).to(eq(["a", "c", "t"]))
  end
end
