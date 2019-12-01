require "minitest/autorun"
require_relative "solution"

class TestFuelCalculation < MiniTest::Unit::TestCase
  def test_fuel_calculation
    assert_equal 2, calculate_fuel_from_mass(12)
    assert_equal 2, calculate_fuel_from_mass(14)
    assert_equal 966, calculate_fuel_from_mass(1969)
    assert_equal 50346, calculate_fuel_from_mass(100756)
  end
end
