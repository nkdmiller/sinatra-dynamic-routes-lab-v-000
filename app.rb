require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  # This is a sample dynamic route.
  get "/square/:number" do
    @num = params[:number]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end
  
  get "/multiply/:num1/:num2" do
    @number = params[:num1].to_i
    @number2 = params[:num2].to_i
    "#{@number * @number2}"
  end
end
