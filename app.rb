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
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      "#{@phrase}"
    end
  end
  
  get "/multiply/:num1/:num2" do
    @number = params[:num1].to_i
    @number2 = params[:num2].to_i
    "#{@number * @number2}"
  end
end
