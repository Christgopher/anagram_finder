require('rspec')
require('anagram_finder')

describe('Array#anagram_finder') do
  it('turns a given list into an array') do
    expect((["cat", "act", "tac"]).anagram_finder()).to(eq("cat"))
  end
end
