require "sinatra"
require "sinatra/reloader"
require "pry"

enable (:sessions)



get "/" do
	erb(:home)

	get "/session_test" do
		@current_session = session

		erb(:dislay_the_session)
	end
end

get "session_add/:value" do
	new_value = params[:value]
	session[:new_session_value] = new_value

	redirect to("/session_test")
end



get "/party" do
	erb(:party)
end


get "/hi" do
	@name = "John"

	erb(:hi_page)
end

get "/about" do
	erb(:about)
end

get "/recipe" do
	@name = "Red Velvet Cake"
	@ingredients = [
		"eggs",
		"flour",
		"red food coloring",
		"cocoa",
		"buttermilk",
		"sugar",
		"cream cheese"
]

 erb(:recipe_page)
end

get"/image" do
	erb(:cool_image)
end

users = {
  "khalifenizar" => { :name => "Nizar Khalife", :email => "nnnnn@nnnnn.com" },
  "ag" => { :name => "Alida Gagliuffi", :email => "agagagag@agagag.com" },
  "alia" => { :name => "Alia Poonawala", :email => "aaaa@aaaaa.com" }
}



#users = {
#  	"johnC" => { :age => 33, :email => "JohnC.com"}
# 	"patriciaO" => { :age => 61, :email => "PatConley@lol.com"}
# 	"marc" => { :age => 43, :email => "Marc.com"}

# }




get "/users/:username" do

	@name = params[:username]

	if @name == "HoustonJohn" || @name == "John"
		erb(:Galveston_J)
	else
		@info = user[@name]

		binding.pry

		erb(:user_profile)
		end
	end
	
