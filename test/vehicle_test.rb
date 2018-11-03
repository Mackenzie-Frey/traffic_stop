require 'minitest/autorun'
require 'minitest/pride'
require './lib/vehicle'
require 'pry'

class VehicleTest < Minitest::Test

  def test_it_exists
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    assert_instance_of Vehicle, vehicle
  end

  def test_it_has_attributes
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    assert_equal "2001", vehicle.year
    assert_equal "Honda", vehicle.make
    assert_equal "Civic", vehicle.model
  end

  def test_it_is_nil_for_default_driver
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    assert_nil vehicle.driver
  end

  def test_it_can_add_driver
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    driver = Driver.new("Bob")
    vehicle.add_driver(driver)
    assert_equal driver, vehicle.driver
  end

  def test_it_can_speed
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    refute vehicle.speeding?
    vehicle.speed
    assert vehicle.speeding?
  end
end
