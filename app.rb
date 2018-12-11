require 'sinatra'
require 'shotgun'

# attr_reader :name
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "This is a secret message"
end

get '/secret/anothersecret' do
  "This is another secret message"
end

get '/verysecret' do
  "This is a very very very secret message"
end

get '/notsosecret' do
  "Public message"
end

get '/random-cat' do
  @name = ["Amigo","Oscar","Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  # @age = params[:age]
  erb(:index)
end
