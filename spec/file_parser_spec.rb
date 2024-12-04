require_relative '../lib/file_parser'

describe FileParser do
  let(:input_file) { 'input.rb' }

  it 'should parse the input file to become a hash of 2 lists' do
    expect(FileParser.parse_to_lists(input_file)).to be_a(Hash)
  end

  it 'should return a hash with 2 lists' do
    expect(FileParser.parse_to_lists(input_file).keys).to eq([:list_one, :list_two])
  end
end