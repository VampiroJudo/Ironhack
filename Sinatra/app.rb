require "sinatra"


get "/" do
	erb(:home)

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
	"JohnC" => { :age => 33, :email => "IIIIIIII@lll.com"}
	"PatriciaO" => { :age => 61, :email => "nldfbjkdrbg@.com"}
	"Marc" => { :age => 43, :email => "kjfnvkjt.com"}

}




get "/users/:username" do
	@name = params[:username]

	if @name == "HoustonJohn" || @name == "John"
		erb(:Galveston_J)
	else
		@info = user[@name]
		erb(:user_profile)
	end
end