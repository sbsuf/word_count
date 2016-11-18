require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  @sender = params.fetch('sender').word_count(params.fetch('word'))
  @word = params.fetch('word')
  erb(:output)
end
