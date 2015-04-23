require('sinatra')
require('sinatra/reloader')
require('./lib/anagram_finder')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram_list') do
  last_array = []
  user_word = params.fetch('user_word')
  user_list = params.fetch('user_list')
  last_array.push(user_word)
  last_array2 = user_list.split(", ")
  last_array2.each() do |word|
    last_array.push(word)
  end
  @final_anagrams = last_array.anagram_finder()
  erb(:anagram_list)
end
