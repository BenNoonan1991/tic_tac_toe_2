require "game"

describe Game do
  let (:a) { Player.new({ name: "a"}) }
  let (:b) { Player.new({ name: "b"}) }

  describe "#switch_players" do
    it "will set @current_player to @other_player" do
    game = Game.new([a, b])
    other_player = game.other_player
    game.switch_players
    expect(game.current_player).to eq other_player
    end
  end

end
