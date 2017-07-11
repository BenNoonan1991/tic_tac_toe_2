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

    def play
      puts "#{current_player.name} is Player 1"
      while true
        board.formatted_grid
        puts ""
        puts select_position
        x, y = get_move
        board.set_cell(x, y, current_player.color)
        if board.game_over
          puts game_over_message
          board.formatted_grid
          return
        else
          switch_players
        end
      end
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
