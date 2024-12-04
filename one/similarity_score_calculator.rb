class SimilarityScoreCalculator
  def initialize(list_one, list_two)
    @list_one = list_one
    @list_two = list_two
  end

  def calculate
    similarity_score_sum = 0
    @list_one.zip(@list_two).map do |location_id, list_two_element|
      similarity = location_id * @list_two.count(location_id)
      similarity_score_sum += similarity
    end
    similarity_score_sum
  end
end