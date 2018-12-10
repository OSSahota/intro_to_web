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
  "<div style='border: 3px dashed red'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
end
