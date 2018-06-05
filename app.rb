require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinizer = PigLatinizer.new()
    @piglatinized = piglatinizer.piglatinize_sentence(params[:user_phrase])
    erb :piglatinize
  end
end
