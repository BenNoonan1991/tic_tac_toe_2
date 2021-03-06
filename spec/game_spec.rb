require "game"

describe Game do
  let (:a) { Player.new({ name: "a"}) }
  let (:b) { Player.new({ name: "b"}) }

  describe "#switch_players" do
    it "will change current player after each turn" do
    game = Game.new([a, b])
    other_player = game.other_player
    game.switch_players
    expect(game.current_player).to eq other_player
    end
  end

  describe "#select_position" do
    it "allows the player to make a move" do
      game = Game.new([a, b])
      allow(game).to receive(:current_player) { a }
      expected = "a: Enter a number between 1 and 9 to select position"
      expect(game.select_position).to eq expected
    end
  end

  describe "#get_move" do
    it "converts player input into an x, y coordinate" do
      game = Game.new([a, b])
      expect(game.get_move("1")).to eq [0, 0]
    end
  end

  describe "#game_over_message" do
    it "displays correct message when a player wins" do
      game = Game.new([a, b])
      allow(game).to receive(:current_player) { a }
      allow(game.board).to receive(:game_over) { :winner }
      expect(game.game_over_message).to eq "a won!"
    end

    it "displays correct message when game is a draw" do
      game = Game.new([a, b])
      allow(game).to receive(:current_player) { a }
      allow(game.board).to receive(:game_over) { :draw }
      expect(game.game_over_message).to eq "Game over: draw"
    end
  end

end
