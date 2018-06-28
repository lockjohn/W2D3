class Hanoi
  attr_accessor :board

  def initialize
    @board = [[1,2,3],[],[]]
  end

  def play
    #display board, get input, check valid_mov, move, won?, loop
    puts @board
    puts "Please start and end location"
    input = gets.chomp
    input.split(",").map!{|el| el.to_i}
    # start,finish = input
  end

  def move(start,finish)
    if valid_move?(start,finish)
    moving = board[start].shift
    board[finish].unshift(moving)
  else
    raise "invalid move"
  end
  end

  def valid_move?(start,finish)
    return true if board[finish].empty?
    return false if board[start].empty?
    board[finish].first > board[start].first
  end

  def won?

    if board[1] == [1,2,3] || board[2] == [1,2,3]
      return true
    end
    false

  end

end
