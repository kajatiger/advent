require_relative '../one/location_list_comparer'

describe LocationListComparer do
  let(:list_one) { [3, 4, 2, 1, 3, 3] }
  let(:list_two) { [4, 3, 5, 3, 9, 3] }
  let(:location_list_comparer) { LocationListComparer.new(list_one, list_two) }

  let(:input_file) { 'one/input.rb' }

  it 'should return the sum of the distances between the sorted lists' do
    expect(location_list_comparer.compare).to eq(11)
  end

  it 'should parse the input file to become a hash of 2 lists' do
    expect(location_list_comparer.parse_lists(input_file)).to be_a(Hash)
  end

  it 'should return a hash with 2 lists' do
    expect(location_list_comparer.parse_lists(input_file).keys).to eq([:list_one, :list_two])
  end

  it 'should get the sum of the parsed lists' do
    parsed_lists = location_list_comparer.parse_lists(input_file)
    expect(LocationListComparer.new(parsed_lists[:list_one], parsed_lists[:list_two]).compare).to eq(3569916)
  end
end