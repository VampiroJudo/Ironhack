require_relative("rook.rb")




black_rook_right = Rook.new(8,8, "Black")
white_rook_left = Rook.new(1,1, "White")

puts "Rook Tests"
p black_rook_right.can_move?(8, 8) == true #vertical movement
p black_rook_right.can_move?(4, 8) == true #horizontal movement
p black_rook_right.can_move?(5, 5) == false # Diagonal movement (invalid)
p black_rook_right.can_move?(3, 6) == false # Side diagonal movement? (invalid)


p white_rook_left.can_move?(1, 1) == true #vertical movement
p white_rook_left.can_move?(5, 1) == true #horizontal movement
p white_rook_left.can_move?(5, 5) == false # Diagonal movement (invalid)
p white_rook_left.can_move?(7, 3) == false # Side diagonal movement? (invalid)

puts""

black_king = King.new(5, 8, "Black")
white_king = King.new(5, 1, "White")

puts "King Test"

p black_king.can_move?(4, 8) == true #vertical movement
p black_king.can_move?(4, 8) == true #horizontal movement
p black_king.can_move?(5, 5) == false # Side diagonal movement? (invalid)
p black_king.can_move?(3, 6) == false ## Side diagonal movement? (invalid)

p white_king.can_move?(4, 1) == true #vertical movement 
p white_king.can_move?(4, 1) == true #horizontal movement
p white_king.can_move?(5, 5) == false #diagonal movemement(invalid)
p white_king.can_move?(7, 3) == false #side diagonal movement (invalid)

puts""



black_bishop_right = Bishop.new(6, 8, "Black")
white_bishop_left = Bishop.new(3, 1, "White")

puts "Bishop test"

p black_bishop_right.can_move?(5, 7) == true # left diagonal movement
p black_bishop_right.can_move?(7, 7) == true # right diagonal movement
p black_bishop_right.can_move?(1, 8) == false #forward movement
p black_bishop_right.can_move?(6, 3) ==false #side to side movement 

p white_bishop_left.can_move?(4, 2) == true #right diagonal movement
p white_bishop_left.can_move?(2, 2) == true #left diagonal movement
p white_bishop_left.can_move?(3, 4) == false#forward movement
p white_bishop_left.can_move?(5, 1) == false #side to side movement

puts ""


black_knight_right = Knight.new(7, 8, "Black")
white_knight_left = Knight.new(2, 1, "White")

puts "Knight test"

p black_knight_right.can_move?(6, 6) == true #right side movement
p black_knight_right.can_move?(8, 6) == true #left side movement
p black_knight_right.can_move?(5, 6) == false #right diagonal movement
p black_knight_right.can_move?(7, 5) == false #forward movement

p white_knight_left.can_move?(3, 3) == true #right side movement
p white_knight_left.can_move?(1, 3) == true #left side movement
p white_knight_left.can_move?(5, 4) == false # straight side movement
p white_knight_left.can_move?(2, 6) == false #straight movement


puts ""


black_queen = Queen.new(4, 8, "Black")
white_queen = Queen.new(4, 1, "White")

puts "Queen test"

p black_queen.can_move?(4, 5) == true # forward movement
p black_queen.can_move?(8, 4) == true #diagonal movement
p black_queen.can_move?(5, 6) == false #knight type movement
p black_queen.can_move?(5, 2) == false #long knight type movement

p white_queen.can_move?(8, 1) == true #right side movement
p white_queen.can_move?(1, 4) == true #left diagonal movement
p white_queen.can_move?(2, 2) == false #left knight type movement
p white_queen.can_move?(7, 2) == false # right side invalid movement

puts ""

black_pawns = BlackPawn.new(5, 7)


puts "Black Pawn test"

p black_pawns.can_move?(5, 6) == true #forward movement
p black_pawns.can_move?(5, 5) == true #left right diagonal movement
p black_pawns.can_move?(5, 4) == false #long forward movement
p black_pawns.can_move?(4, 3) == false # long forward/left movement

puts ""

white_pawns = WhitePawn.new(7, 2)
 
puts "White Pawn"

p white_pawns.can_move?(7, 4) == true #Forward movement, 2 spaces
p white_pawns.can_move?(7, 3) == true #left side kill movement
p white_pawns.can_move?(7, 1) == false #backwards movement
p white_pawns.can_move?(8, 2) == false #right side movement

