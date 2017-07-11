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

  describe "#move" do
    it "allows the player to make a move" do
      game = Game.new([a, b])
      allow(game).to receive(:current_player) { a }
      expected = "a: Enter a number between 1 and 9 to select position"
      expect(game.select_position).to eq expected
    end
  end

end
