class Calculator
	def initialize (firstNumb, secNumb)
		@firstNumb = firstNumb
		@secNumb = secNumb

	end

	def addition
		
		result = "#{firstNumb}" + "#{secNumb}"
	end


	def subraction
		result = "#{firstNumb}" - "#{secNumb}"
	end

	def multiplication
		result = "#{firstNumb}" * "#{secNumb}"
	end
	

	def division
		result = "#{firstNumb}" / "#{secNumb}"
	end	

end