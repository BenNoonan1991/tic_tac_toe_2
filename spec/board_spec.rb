require 'board'

describe Board do

  context "#initialize" do
    it "initializes the board with a grid" do
      expect { Board.new(grid: "grid") }.to_not raise_error
    end

    it "initializes the grid with 3 rows" do
      board = Board.new
      expect(board.grid.size).to eq(3)
    end
  end
end
