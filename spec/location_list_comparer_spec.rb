require_relative '../one/location_list_comparer'
require_relative '../lib/file_parser'

describe LocationListComparer do
  let(:list_one) { [3, 4, 2, 1, 3, 3] }
  let(:list_two) { [4, 3, 5, 3, 9, 3] }
  let(:location_list_comparer) { LocationListComparer.new(list_one, list_two) }
  let(:parsed_lists) { FileParser.parse_to_lists(input_file) }

  let(:input_file) { 'input.rb' }

  it 'should return the sum of the distances between the sorted lists' do
    expect(location_list_comparer.compare).to eq(11)
  end

  it 'should get the sum of the parsed lists' do
    expect(LocationListComparer.new(parsed_lists[:list_one], parsed_lists[:list_two]).compare).to eq(3569916)
  end
end