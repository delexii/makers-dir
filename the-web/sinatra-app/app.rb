# controlling concerns file - routing

require 'sinatra'
require "sinatra/reloader" if development?


get '/' do
  "Hello!"
end

get '/secret' do
  "Secret has been revealed"
end

get '/cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end