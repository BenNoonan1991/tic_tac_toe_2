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

end
