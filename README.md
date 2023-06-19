# Tic-Tac-Toe Game in Ruby

The "Tic-Tac-Toe" class in Ruby provides a simple implementation of the popular game for two players. The class encapsulates the game logic and provides methods to play the game interactively.

Upon initialization, an empty game board is created as a 3x3 array. The players are represented by "X" and "O", and the game starts with "X" as the current player. The `play` method drives the game by repeatedly displaying the board, prompting the current player for their move, validating the move, and updating the board. The game continues until there is a winner or a draw. At the end of the game, the final board state and the result (winner or draw) are displayed.

The private methods within the class handle various aspects of the game. `display_board` prints the current board state, `print_turn_prompt` displays the current player's turn, and `get_move` retrieves the player's desired move from the console. The `valid_move?` method checks the validity of the move, ensuring it is within the board boundaries and the selected cell is empty. The `make_move` method updates the board with the current player's move. `switch_players` switches the current player between "X" and "O" for each turn. The `game_over?` method determines if the game is over by checking for a winner or a draw. The `winner?`  method checks for all possible winning combinations on the board to determine if a player has won. The `draw?` method checks if the game has resulted in a draw. Finally, `print_game_result` displays the outcome of the game, either the winner or a draw.

To play the game, an instance of the `TicTacToe` class is created, and the `play` method is called on the instance.

This "Tic-Tac-Toe" implementation provides an enjoyable way to play the classic game, allowing players to compete against each other and experience the thrill of victory or the satisfaction of a draw.
