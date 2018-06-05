require_relative 'config/environment'
require_relative './models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do
    word = PigLatinizer.new
    word.piglatinize(params[:user_phrase])
    # binding.pry
  end

end