require 'player'

describe Player do
  context "#initialize" do

    it "raises an exception when initialized with {}" do
      expect { Player.new({}) }.to raise_error(KeyError)
    end

  end
end
