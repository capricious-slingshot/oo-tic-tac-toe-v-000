class TicTacToe
	WIN_COMBINATIONS = [
		[0, 1, 2],
		[3, 4, 5],
		[6, 7, 8],
		[0, 3, 6],
		[1, 4, 7],
		[2, 5, 8],
		[0, 4, 8],
		[2, 4, 6]
	]


  def initialize
  	@board = [" "," "," "," "," "," "," "," "," "]
  end

	def display_board
		puts "-----------"
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
		puts "--------"
		puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
		puts "--------"
		puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
	end

	def input_to_index(input)
		input = input.to_i
		input - 1 unless input == 0
	end

	def move(index, char)
		@board[index] = char
	end

	def position_taken?
    
	end
end
