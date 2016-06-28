require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Hello World"
  end

  get '/food_form' do
    erb :food_form
  end

  post '/food_form' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
    erb :food_form
  end


end