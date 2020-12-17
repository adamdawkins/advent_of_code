# frozen_string_literal: true

require "minitest/autorun"
require_relative "../2"

# For example, suppose you have the following list:
#
# 1-3 a: abcde
# 1-3 b: cdefg
# 2-9 c: ccccccccc
# Each line gives the password policy and then the password. The password policy indicates the lowest and highest number
# of times a given letter must appear for the password to be valid.
# For example, 1-3 a means that the password must contain a at least 1 time and at most 3 times.
# In the above example, 2 passwords are valid.
# The middle password, cdefg, is not; it contains no instances of b, but needs at least 1.
# The first and third passwords are valid: they contain one a or nine c, both within the limits of their
# respective policies.

class TestDay2 < MiniTest::Test
  def test_that_the_validator_works
    assert_equal true, PasswordValidator.validate("1-3 a: abcde")
    assert_equal false, PasswordValidator.validate("1-3 b: cdefg")
    assert_equal true, PasswordValidator.validate("2-9 c: ccccccccc")
  end
end
