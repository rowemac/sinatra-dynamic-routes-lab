require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do 
    # binding.pry
    @result = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @number.times {@result += "#{@phrase}\n"}

    @result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]

    if @operation == "add"
      (@number1 + @number2).to_s
    elsif @operation == "subtract"
      (@number1 - @number2).to_s
    elsif @operation == "multiply"
      (@number1 * @number2).to_s
    elsif @operation == "divide"
      (@number1 / @number2).to_s
    end 
  end




end