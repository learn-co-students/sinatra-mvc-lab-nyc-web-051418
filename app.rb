require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
      erb :user_input
    end

    post '/piglatinize' do

      piglatinizer = PigLatinizer.new()
      @piglatinize = piglatinizer.piglatinize(params[:user_phrase])
      erb :user_output

      # string_input = PigLatinizer.new
      #
      # string_to_alter = params[:user_input]
      #
      # if string_to_alter =~ /\s/
      #   @piglatinize = string_input.piglan
      #   (string_to_alter)
      # else
      #   @piglatinize = string_input.rearrange_string(string_to_alter)
      # end


    end


end
