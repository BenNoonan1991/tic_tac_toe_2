require 'cell'

describe Cell do

  context "initialize" do
    it "is initialized with a value of '' " do
      cell = Cell.new
      expect(cell.value).to eq ''
    end
  end

end
