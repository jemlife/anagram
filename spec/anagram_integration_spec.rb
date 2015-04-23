require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the result path', {:type => :feature}) do
  it('takes a word or list words from user to results in an anagram') do
    visit('/')
    fill_in('input', :with => 'cat')
    fill_in('arguments', :with => 'act, tac, bob, dog')
    click_button('Send')
    expect(page).to have_content('are anagrams of cat')
  end
end
