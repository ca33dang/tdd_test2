require "minitest/autorun"
require_relative "test2.rb"

class TestTest < Minitest::Test

	def test_number_comparison_returns_number
		assert_equal(Integer, number_comparison("", "").class)
	end
	def test_that_1_match_returns_3
		assert_equal(2, number_comparison("1111", "1222"))
	end
	def test_that_2_match_returns_2
		assert_equal(3, number_comparison("1111", "1122"))
	end
	def test_if_one_offs_return
		assert_equal([], check_for_match_arr(["1222","1235","1234"], "1234"))
	end
	def test_if_winners_equal_2
		assert_equal([0, 0], winarr(["1234", "1234", "1244", "1255"], ["1234", "1299"]))
	end

end