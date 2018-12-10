require 'sinatra'
require 'shotgun'


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

get '/cat' do
	erb(:index)
end

