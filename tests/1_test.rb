# frozen_string_literal: true

require "minitest/autorun"
require_relative "../1"

# For example, suppose your expense report contained the following:
#
# 1721
# 979
# 366
# 299
# 675
# 1456
# In this list, the two entries that sum to 2020 are 1721 and 299.
# Multiplying them together produces 1721 * 299 = 514579, so the correct answer is 514579.

class TestDay1 < MiniTest::Test
  def setup
    @expense_report = ExpenseReport.new([1721, 979, 366, 299, 675, 1456])
  end

  def test_that_the_right_values_are_multiplied
    assert_equal [1721, 299], @expense_report.the_two_entries
  end

  def test_that_the_answer_is_correct
    assert_equal 514_579, @expense_report.the_answer
  end
end
