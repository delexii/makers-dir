# controlling concerns file - routing

require 'sinatra'
require "sinatra/reloader" if development?


get '/' do
  "Hello!"
end

get '/secret' do
  "Secret has been revealed"
end

get '/random-cat' do 
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end
# server attempts to look for the image when we send the request

get '/named-cat' do 
  p params
  @name = params[:name]
  erb(:index)
end