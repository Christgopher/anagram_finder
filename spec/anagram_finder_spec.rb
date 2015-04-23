require('rspec')
require('anagram_finder')

describe('Array#anagram_finder') do
  #it('turns a given list into an array') do
  #  expect((["cat", "act", "tac"]).anagram_finder()).to(eq("cat"))
  #end
  #it('checks if words are anagrams') do
  #  expect((["cat", "act", "movie", #"tac"]).anagram_finder()).to(eq(["act", "tac"]))
#end

it('returns pithy response to input') do
  expect((["cat", "act", "movie", "tac"]).anagram_finder()).to(eq("Your amazing anagram matches are: act, tac"))
end
end
