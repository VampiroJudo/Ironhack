# server.rb
require "sinatra"
require_relative "lib.rb"

require "sinatra/reloader"

get "/add" do
  erb(:add)
end



post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  
  if params[:operation] == "addition"
  	@result = Calculator.add(first,second)
  elsif params[:operation] == "subtraction"
  	@result = Calculator.add(first,second)
  elsif params[:operation] == "multiplication"
  	@result = Calculator.add(first,second)
  else = params[:operation] == "division"
  	@result = Calculator.add(first,second)
  end
  		
  
  
  		









  

end