class TicTacToe
  def initialize
    @board = Array.new(3) {Array.new(3, " ")}
    @current_player = "X"
  end

  def play
    loop do
      display_board
      print_turn_prompt
      row, col = get_move
      make_move(row, col)
      break if game_over?
      switch_players
    end
    display_board
    print_game_result
  end

  private

  def display_board
    puts "\n   1 2 3"
    puts "  -------"
    @board.each_with_index do |row, i|
      print "#{i + 1} |"
      row.each { |cell| print " #{cell}" }
      puts "\n  -------"
    end
  end

  def print_turn_prompt
    puts "\n#{@current_player}'s turn!"
  end

  def get_move
    loop do
      print "Enter row and column (e.g. 1 2): "
      row, col = gets.chomp.split.map(&:to_i)
      if valid_move?(row, col)
        return row - 1, col - 1
      else
        puts "Invalid move! Please try again."
      end
    end
  end

  def valid_move?(row, col)
    return false unless [row, col].all? { |coord| coord.between?(1, 3) }
    return false unless @board[row - 1][col - 1] == " "
    true
  end

  def make_move(row, col)
    @board[row][col] = @current_player
  end

  def switch_players
    @current_player = @current_player == "X" ? "O" : "X"
  end

  def game_over?
    winner? || draw?
  end

  def winner?
    winning_combinations = [
        [[0,0], [0,1], [0,2]],
        [[1,0], [1,1], [1,2]],
        [[2,0], [2,1], [2,2]],
        [[0,0], [1,0], [2,0]],
        [[0,1], [1,1], [2,1]],
        [[0,2], [1,2], [2,2]],
        [[0,0], [1,1], [2,2]],
        [[0,2], [1,1], [2,0]]
    ]
    winning_combinations.each do |comb|
      if comb.all? { |row, col| @board[row][col] == "X" }
        @winner = "X"
        return true
      elsif comb.all? { |row, col| @board[row][col] == "O"}
        @winner = "O"
        return true
      end
    end
    false
  end

  def draw?
    @board.flatten.none? { |cell| cell == " " }
  end

  def print_game_result
    if winner?
      puts "#{@winner} wins!"
    else
      puts "it's a draw!"
    end
  end
end

game = TicTacToe.new
game.play
