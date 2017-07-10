require 'extensions'

describe Array do

  describe "#all_empty" do
    it "returns true if the array is completely empty" do
      expect(["", "", ""].all_empty?).to be_truthy
    end
  end
end
