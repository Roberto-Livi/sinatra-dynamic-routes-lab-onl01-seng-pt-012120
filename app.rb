require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end
  
  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    
    @number.times {"#{phrase}"}
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    
    "#{@word_1}"
  end
    

end