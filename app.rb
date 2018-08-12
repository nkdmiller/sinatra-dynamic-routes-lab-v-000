require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  # This is a sample dynamic route.
  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i - 1
    @phrases = params[:phrase]
    @phrase = params[:phrase]
    @num.times do
      @phrases = @phrases + @phrase
    end
    "#{@phrases}"
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  get "/add/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    elsif @operation == "divide"
      "#{@number1 / @number2}"
    end
  end
end
