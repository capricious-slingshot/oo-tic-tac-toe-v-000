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

	def position_taken?(index)
		!(@board[index].nil? || @board[index].strip.empty?)
	end

	def valid_move?(index)
    position_exzist?(index) && !position_taken?(index)
	end

	def position_exzist?(index)
		index.between?(0, 8)
	end

	def turn_count
		@board.select {|i| !i.strip.empty? && !i.nil?}.count
	end

	def current_player
		turn_count.even? ? "X" : "O"
	end

	def turn
		puts "Please place your #{current_player} in spaces 1 - 9"
		input = gets.chomp.strip

		index = input_to_index(input)
		valid_move?(index)
		current_player
	end
end
