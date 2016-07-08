require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')
require('pry')
require('launchy')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/') do
  word = Word.new({:word => params['word']})
  word.save()
  @words = Word.all()
  erb(:index)
end

get('/word/:id') do
  @word = Word.find(params['id'].to_i)
  erb(:word_definition)
end


post('/word/:id') do
  word = Word.find(params['id'].to_i)
  word.add_definition(params.fetch('defin'))
  word.save()
  @word = word
  
  erb(:word_definition)
end



# post('/word/:id') do   #/definition#
  # @word = Word.find(params['id'].to_i)
  # word.add_definition(params['definition'])
  # definition.save()
  # @word = word
#     definition = params.fetch('definition')
#     @definition = Definition.new([{:definition => params['definition']}])
#     @definition.save()
#     @dealership = Dealership.find(params.fetch('dealership_id').to_i())
#     @word.add_definitions(@definition)
#
#   erb(:word_definition)
# end
