require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
      erb :user_input
    end


    post '/rearrange' do
      #receive params here
      # @pig_instance = PigLatinizer.new(params[:input])
      # @pig_instance.rearrange_string

      english_phrase = PigLatinizer.new(params[:input])
      @pig_latin_phrase = english_phrase.rearrange_string

      erb :user_output
    end


end
