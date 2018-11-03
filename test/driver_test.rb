require 'minitest/autorun'
require 'minitest/pride'
require './lib/driver'
require 'pry'

class DriverTest < Minitest::Test

  def test_it_exists
    driver = Driver.new("Bob")
    assert_instance_of Driver, driver
  end

  def test_it_has_a_name
    driver = Driver.new("Bob")
    assert_equal "Bob", driver.name
  end

end
