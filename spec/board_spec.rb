require 'board'

describe Board do
  TestCell = Struct.new(:value)
  let(:x_cell) { TestCell.new("X") }
  let(:y_cell) { TestCell.new("Y") }
  let(:empty) { TestCell.new }

  describe "#initialize" do
    it "initializes the board with a grid" do
      expect { Board.new(grid: "grid") }.to_not raise_error
    end

    it "initializes the grid with 3 rows" do
      board = Board.new
      expect(board.grid.size).to eq(3)
    end

    it "creates 3 cells for each row of the grid" do
      board = Board.new
      board.grid.each do |row|
        expect(row.size).to eq (3)
      end
    end
  end

  describe "#grid" do
    it "returns the grid" do
      board = Board.new(grid: "Test")
      expect(board.grid).to eq "Test"
    end
  end

  describe "#get_cell" do
    it "returns cell based on coordinates" do
      grid = [["", "", ""], ["", "", "Test"], ["", "", ""]]
      board = Board.new(grid: grid)
      expect(board.get_cell(2, 1)).to eq "Test"
    end
  end

  describe "#set_cell" do
    it "updates the value of the cell object at a (x, y) coordinate" do
      First = Struct.new(:value)
      grid = [[First.new("nought"), "", ""], ["", "", ""], ["", "", ""]]
      board = Board.new(grid: grid)
      board.set_cell(0, 0, "nought")
      expect(board.get_cell(0, 0).value).to eq "nought"
    end
  end

  describe "#game_over" do
    it "returns :draw if all spaces on board are taken" do
      grid = [
        [x_cell, y_cell, x_cell],
        [y_cell, x_cell, y_cell],
        [y_cell, x_cell, y_cell]
      ]
      board = Board.new(grid: grid)
      expect(board.game_over).to eq :draw
    end

    it "returns winner if  player gets 3 in a row" do
      grid = [
        [x_cell, x_cell, x_cell],
        [y_cell, x_cell, y_cell],
        [y_cell, y_cell, empty]
      ]
      board = Board.new(grid: grid)
      expect(board.game_over).to eq :winner
    end
  end
end
