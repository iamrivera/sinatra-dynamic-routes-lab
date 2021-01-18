require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrases = []
    @number.times {|n| @phrases << @phrase}
    @phrases.join(" ")
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @words = []
    params.each do |key, value|
      @words << value
    end
    "#{@words.join(" ")}."
  end

  get "/:operation/:number1/:number2" do 
    @operator = params[:operation]
    @num1=params[:number1].to_f
    @num2=params[:number2].to_f
    case @operator
    when "add"
      @sum = @num1+@num2
      "#{@sum}"
    when "subtract"
      @diff = @num1-@num2
      "#{@diff}"
    when "multiply"
      @prod = @num1*@num2
      "#{@prod}"
    when "divide"
      @quot = @num1/@num2
      "#{@quot}"
    end
  end      

end