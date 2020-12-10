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
#
# Part 2
# Using the above example again, the three entries that sum to 2020 are 979, 366, and 675. Multiplying them together
# produces the answer, 241861950.

class TestDay1 < MiniTest::Test
  def setup
    @expense_report = ExpenseReport.new([1721, 979, 366, 299, 675, 1456])
  end

  def test_that_the_answer_is_correct
    assert_equal 514_579, @expense_report.product_of_entries_matching(2, 2020)
  end

  def test_that_the_part_2_answer_is_correct
    assert_equal 241_861_950, @expense_report.product_of_entries_matching(3, 2020)
  end
end
