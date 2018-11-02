require 'minitest/autorun'
require 'minitest/pride'
require './lib/driver'
require './lib/pry'

class DriverTest < Minitest::Test

end

# # Traffic Stop
#
# ## Iteration 1
#
# Use TDD to create a `Driver` class that responds to the following interaction pattern:
#
# ```ruby
# pry(main)> require './lib/driver'
#
# pry(main)> driver = Driver.new("Bob")
#
# pry(main)> driver.name
# #=> "Bob"
# ```
#
# ## Iteration 2
#
# Use TDD to build a `Vehicle` class that responds to the following interaction pattern:
#
# ```ruby
# pry(main)> require './lib/driver'
#
# pry(main)> require './lib/vehicle'
#
# pry(main)> vehicle = Vehicle.new("2001", "Honda", "Civic")
#
# pry(main)> vehicle.year
# #=> "2001"
#
# pry(main)> vehicle.make
# #=> "Honda"
#
# pry(main)> vehicle.model
# #=> "Civic"
#
# pry(main)> vehicle.driver
# #=> nil
#
# pry(main)> driver = Driver.new("Bob")
#
# pry(main)> vehicle.add_driver(driver)
#
# pry(main)> vehicle.driver
# #=> #<Driver:0x00007f9c48279b38...>
#
# pry(main)> vehicle.speeding?
# #=> false
#
# pry(main)> vehicle.speed
#
# pry(main)> vehicle.speeding?
# #=> true
# ```
