require_relative '../one/similarity_score_calculator'
require_relative '../lib/file_parser'

describe SimilarityScoreCalculator do
  let(:list_one) { [3, 4, 2, 1, 3, 3] }
  let(:list_two) { [4, 3, 5, 3, 9, 3] }

  let(:parsed_lists) { FileParser.parse_to_lists('input.rb') }

  it 'calculates the similarity score between two lists' do
    expect(SimilarityScoreCalculator.new(list_one, list_two).calculate).to eq(31)
  end

  it 'calculates the similarity score between two parsed files' do
    expect(SimilarityScoreCalculator.new(parsed_lists[:list_one], parsed_lists[:list_two]).calculate).to eq(26407426)
  end
end