require 'rspec'
require 'hanoi'

RSpec.describe Hanoi do

  subject(:hanoi) {Hanoi.new}

  describe "#initialize" do
    it "makes a board with three stacks" do
      expect(hanoi.board).to eq([[1,2,3],[],[]])
    end
  end

  describe "#move" do
    start = 0
    finish = 1
    before (:each) do
      hanoi.move(start,finish)
    end
    it "only moves one piece" do
      expect(hanoi.board).to eq([[2,3],[1],[]])
    end
    
    it "doesnt put a bigger piece on a smaller piece within a stack" do
      expect {hanoi.move(start,finish)}.to raise_error("invalid move")
    end
  end

  describe "#won?" do
    it "check if it correctly identifies winning situation" do
      hanoi.board = [[],[],[1,2,3]]
      expect(hanoi).to be_won
    end

    it "doesnt call win on the beginning state" do
      expect(hanoi).to_not be_won
    end
  end




end
