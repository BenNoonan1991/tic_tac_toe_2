require 'extensions'

describe Array do

  describe "#all_empty" do
    it "returns true if the array is completely empty" do
      expect(["", "", ""].all_empty?).to be_truthy
    end

    it "returns false if the array is not completely empty" do
      expect(["", 1, "", Object.new, :a].all_empty?).to be_falsey
    end
  end
end
