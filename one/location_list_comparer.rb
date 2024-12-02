class LocationListComparer
  def initialize(list_one, list_two)
    @list_one = list_one
    @list_two = list_two
  end

  def compare
    sorted_list_one = @list_one.sort
    sorted_list_two = @list_two.sort

    sum = 0
    sorted_list_one.each_with_index do |location, index|
      sum += (location - sorted_list_two[index]).abs
    end

    sum
  end

  def parse_lists(file)
    left = []
    right = []
    File.open(file).each do |line|
      sides = line.split(' ').map(&:to_i)
      left << sides[0]
      right << sides[1]
    end
    { list_one: left, list_two: right }
  end
end