require_relative "solution"
require "minitest/autorun"

class TestSolution < Minitest::Test
  def test_pairs_sum_to_5
    result = [1, 2, 3, 4, 5].pairs_sum_to(5)
    expected = [[1, 4], [2, 3]]
    assert_equal(result.map(&:sort), expected.map(&:sort))
    assert_same_elements(result, expected)
  end

  def test_sum_to_negative_2
    result = [0, -1, 2, -3, 1].pairs_sum_to(-2)
    expected = [[-3, 1]]
    assert_equal(result.map(&:sort), expected.map(&:sort))
    assert_same_elements(result, expected)
  end

  def test_pairs_sum_to_3
    result = [11, -4, 7, 8, -10].pairs_sum_to(3)
    expected = [[-4, 7]]
    assert_equal(result.map(&:sort), expected.map(&:sort))
    assert_same_elements(result, expected)
  end

  def test_pairs_sum_to_o_n_time_complexity
    large_array = Array.new(100000) { rand(-10000..10000) }
    target_sum = rand(-20000..20000)
    start_time = Time.now
    result = large_array.pairs_sum_to(target_sum)
    end_time = Time.now
    duration = end_time - start_time
    expect(duration).to be < 1 # Test should complete quickly for an O(n) solution
  end
end
