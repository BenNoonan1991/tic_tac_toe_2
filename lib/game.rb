require 'board'

class Game
    attr_reader :players, :board, :current_player, :other_player

    def initialize(players, board = Board.new)
      @players = players
      @board = board
      @player_1, @player_2 = players.shuffle
    end

    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    def select_position
      "#{current_player.name}: Enter a number between 1 and 9 to select position"
    end

    def get_move(player_input = gets.chomp)
      coordinate(player_input)
    end

    def game_over_message
      return "#{current_player.name} won!" if board.game_over == :winner
      return "Game over: draw" if board.game_over == :draw
    end

    private

    def coordinate(player_input)
      mapping = {
        "1" => [0, 0],
        "2" => [1, 0],
        "3" => [2, 0],
        "4" => [0, 1],
        "5" => [1, 1],
        "6" => [2, 1],
        "7" => [0, 2],
        "8" => [1, 2],
        "9" => [2, 2]
      }
      mapping[player_input]
    end


end
