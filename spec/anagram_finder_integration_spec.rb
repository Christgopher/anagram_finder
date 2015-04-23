require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path for anagrams finder', {:type => :feature}) do
  it('makes a list of anagrams') do
    visit('/')
    fill_in('user_word', :with => 'cat')
    fill_in('user_list', :with => 'act, movie, tac')
    click_button('Send')
    expect(page).to have_content('Your amazing anagram matches are: act, tac')
  end
end
