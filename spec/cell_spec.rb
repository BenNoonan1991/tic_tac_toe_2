require 'cell'

describe Cell do

  describe "initialize" do
    it "is initialized with a value of '' " do
      cell = Cell.new
      expect(cell.value).to eq ''
    end
  end

end
