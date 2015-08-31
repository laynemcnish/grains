class Grains

  def self.square(num)
    calculate_grains
    @grains[num - 1]
  end

  def self.total
    calculate_grains
    @grains.reduce(:+)
  end

  def self.calculate_grains
    squares = [*1..64]
    @grains = squares.each_index {|i| squares[i] = squares[i - 1] * 2 if i != 0 }
  end

end
