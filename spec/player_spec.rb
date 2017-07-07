require 'player'

describe Player do
  context "#initialize" do

    it "raises an exception when initialized with {}" do
      expect { Player.new({}) }.to raise_error(KeyError)
    end

    it "does not raise error when initialized with player name" do
      input = { name: "Player 1" }
      expect { Player.new(input) }.to_not raise_error
    end

  end

  context "#name" do
    it "returns name of current player" do
      input = { name: "Player 1" }
      player = Player.new(input)
      expect(player.name).to eq "Player 1"
    end
  end

end
