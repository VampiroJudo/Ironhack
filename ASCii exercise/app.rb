require "artii"
require "sinatra"



	 


	
	get "/ascii/:randomword" do


	asciifier = Artii::Base.new(:font => "doh")	
	word = params[:randomword]
	
	@final_product = asciifier.asciify("ghonorrhea")

	erb(:words)

	
end