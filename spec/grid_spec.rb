require 'grid'

describe Grid do

  context "initialize" do
    it "is initialized with a value of '' " do
      grid = Grid.new
      expect(grid.value).to eq ''
    end
  end
end
