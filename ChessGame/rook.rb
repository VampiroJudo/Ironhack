

class Rook
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end 

	def can_move?(final_x, final_y)
		if @x == final_x|| @y == final_y
			true
		else
			false
		end
	end
end

class King
	def initialize (x, y, color)
		@x = x
		@y = y
		@color = color

	end

	def can_move?(x, y)
		if @x == x + 1|| @y == y + 1
			true
		else
			false
		end 
	end
end


class Bishop
	def initialize (x, y, color)
		@x = x
		@y = y
		@color = color
	end

	 def can_move?(final_x, final_y)
	 	changeY = @y - final_y
	 	changeX = @x - final_x
		if changeX.abs == changeY.abs 
			true
		else
			false
		

		end
	end
end 

class Knight
	def initialize (x, y, color)
		@x = x
		@y = y
		@color = color

	end

	def can_move?(final_x, final_y)
		changeY = @y - final_y
	 	changeX = @x - final_x
			if changeX.abs == 1 && changeY.abs == 2
				true
			elsif 
				changeX.abs == 2 && changeY.abs == 1
				true
			else
				false
		end
	end
end

class Queen
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(final_x, final_y)
		changeY = @y - final_y
		changeX = @x - final_x
		
		if @x == final_x|| @y == final_y
			true
		elsif changeX.abs == changeY.abs
			true
		else
			false
		end
	end
end

				
class BlackPawn
	def initialize(x, y)
		@x = x
		@y = y
		
	end

	def can_move? (final_x, final_y)
		changeX = @x - final_x
		changeY = @y - final_y
		
		if changeX == 0 && (changeY == 1 || changeY == 2)
			true
		else 
			false
		end
	end
end


class WhitePawn 
	def initialize(x, y)
		@x = x
		@y = y
	end

	def can_move?(final_x, final_y)
		changeX = @x - final_x
		changeY = @y - final_y
		
		if changeX == 0 && (changeY == -1 || changeY == -2)
			true
		else 
			false
		end
	end
end




	























