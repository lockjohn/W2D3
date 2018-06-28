
def my_uniq(arr)
  arr.uniq
end

class Array
  def two_sum
    result = []
    (0...self.length-1).to_a.each do |i|
      (i+1...self.length).to_a.each do |j|
        result << [i,j] if self[i] + self[j] == 0
      end
    end
    result
  end

  def my_transpose
    result = Array.new (Array.new(self.length){[]})
    self.each_with_index do |row,i|
      row.each_with_index do |col,j|
        result[j][i] = col
      end
    end
    result
  end
end

def stock_picker(prices)
  dates = [0,1]
  (0...prices.length-1).to_a.each do |i|
    (i+1...prices.length).to_a.each do |j|
      dates = [i,j] if (prices[j] - prices[i]) > prices[dates[1]] - prices[dates[0]]
    end
  end
  dates
end
