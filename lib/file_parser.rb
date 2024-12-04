class FileParser
  def self.parse_to_lists(file)
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