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
end