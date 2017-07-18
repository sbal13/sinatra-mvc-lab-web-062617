require_relative 'config/environment'

class App < Sinatra::Base
	get '/' do 
		erb :user_input
	end

	post '/piglatinize' do
		phrase = PigLatinizer.new
		phrase.words = params[:user_phrase]
		@latinized = phrase.to_pig_latin
		erb :latinized_word
	end
end