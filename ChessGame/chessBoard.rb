class Board
	def initalize
		#             1   2    3    4   5  6  7   8
	@pieces = [nil , [], [] , [], [], [], [],[], []]

	def add_piece (the_piece)
		x = the_piece.x
		y = the_piece.y
		@pieces[x][y] = the_piece
	end
end

	def board_can_move?(x, y, final_x, final_y)
		the_piece = @pieces[x][y]

		if x > @pieces.length || y > @pieces.length||
			final_x > @pieces.length || final_y > @pieces.length
			false
		else
			the_piece = @pieces[x][y]
		

		if the_piece == nil
			false
		elsif the_piece.can_move? (final_x, final_y)
			true
		else
			false

		end
	end
	end
end
			

