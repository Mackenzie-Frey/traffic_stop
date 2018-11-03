require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/driver'
require './lib/vehicle'

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

  def test_it_has_a_nil_for_default_driver
    skip
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    assert_equal nil, vehicle.driver
    # will the above also work as assert nil, vehicle.driver
  end

  def test_it_can_add_drivers
    skip
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    driver = Driver.new("Bob")
    vehicle.add_driver(driver)
    assert_equal driver, vehicle.driver
  end

  def test_it_can_speed
    skip
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    assert_equal false, vehicle.speeding?
    # try the above as refute vehicle.speeding?
    vehicle.speed
    assert_equal false, vehicle.speeding?
    # try the above as assert, vehicle.speeding?
    assert_equal true, vehicle.speeding?
  end
end

# go back through interaction pattern... to confirm correct...
# aka copy and paste into pry
