class BusesController < ApplicationController
	
	def new
    	@bus = Bus.find_or_create_by(bus_id: bus_id)
  	end
	# Bus.find_or_create_by("bus_id") do |c|
 #  c.locked = false
end




# Find the first user named "Scarlett" or create a new one with a
# different last name.
Bus.find_or_create_by(bus_id: 'bus_id') do |bus|
  user.last_name = 'Johansson'
end
# => #<User id: 2, first_name: "Scarlett", last_name: "Johansson">
