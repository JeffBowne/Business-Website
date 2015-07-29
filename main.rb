#we need this file to start our server with
require 'sinatra'

get '/' do
  erb :cover
end

get '/about' do
  erb :about
end

get '/guitars' do
  erb :guitars
end

get '/questions' do
  erb :questions
end

get '/guitars/bacchus' do
  erb :"g-bacchus"
end

get '/guitars/belvedere' do
  erb :"g-belvedere"
end

get '/guitars/belvjr' do
  erb :"g-belvjr"
end

get '/guitars/galaxie' do
  erb :"g-galaxie"
end

get '/guitars/mach' do
  erb :"g-mach"
end