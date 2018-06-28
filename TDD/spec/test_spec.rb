require 'rspec'
require 'test'

describe "#dups" do
  arr = [1,2,3,3,5]

  it "removes dups and returns uniq elements in order they appear" do
    expect(my_uniq(arr)).to eq([1,2,3,5])
  end

  it "should return a new array" do
    expect(my_uniq(arr)).to_not equal(arr)
  end

end

describe "#two_sum" do
  arr = [-1,0,2,-2,1]

  it "finds all pairs of positions where el's sum to 0" do
    expect(arr.two_sum).to eq([[0,4],[2,3]])
  end

  it "should return a nested array" do
    arr.two_sum.each do |el|
      expect(el).to be_an_instance_of(Array)
    end
  end

  it "should return a sorted array"do
  expect(arr.two_sum).to_not eq([[2,3],[0,4]])
end
end

describe "#my_transpose" do
  matrix = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
  it "transposes the matrix correctly" do
    expect(matrix.my_transpose[0][1]).to eq(3)
    expect(matrix.my_transpose[1][0]).to eq(1)
  end
end
describe "#stock_picker" do
  prices = [1,3,9,7,5]
  dates = stock_picker(prices)
  winner = [0,2]
  it "date length is two" do
    expect(dates.length).to eq(2)
  end
  it "returns an array" do
    expect(dates).to be_an_instance_of(Array)
  end
  it "has the most profitable date pair" do
    expect(dates).to eq(winner)
  end
  it "you can't have sell date earlier than buy date" do
    expect(dates[0] < dates[1]).to be true
  end
end
