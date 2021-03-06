require 'extensions'

describe Array do

  describe "#all_empty?" do
    it "returns true if the array is completely empty" do
      expect(["", "", ""].all_empty?).to be_truthy
    end

    it "returns false if the array is not completely empty" do
      expect(["", 1, "", Object.new, :a].all_empty?).to be_falsey
    end
  end

  describe "#all_same?" do
    it "returns true if all array elements are the same" do
      expect(["A", "A", "A"].all_same?).to be_truthy
    end
  end

  describe "#any_empty?" do
    it "returns true if any array elements are empty" do
      expect(["", "A", "A"].any_empty?).to be_truthy
    end
  end

  describe "#none_empty?" do
    it "returns true if no array elements are empty" do
      expect(["A", "A", "A"].none_empty?).to be_truthy
    end
  end

end
