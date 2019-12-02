require "minitest/autorun"
require_relative "solution"

class TestIntcodeComputer < Minitest::Unit::TestCase
  def test_small_cases
    assert_equal [2, 0, 0, 0, 99], process_opcodes([1, 0, 0, 0, 99])
    assert_equal [2, 3, 0, 6, 99], process_opcodes([2, 3, 0, 3, 99])
    assert_equal [2, 4, 4, 5, 99, 9801], process_opcodes([2, 4, 4, 5, 99, 0])
    assert_equal [30, 1, 1, 4, 2, 5, 6, 0, 99], process_opcodes([1, 1, 1, 4, 99, 5, 6, 0, 99])
  end
end
