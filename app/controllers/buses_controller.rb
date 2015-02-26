class BusesController < ApplicationController
	
	def new
    	@bus = Bus.find_or_create_by(bus_id: bus_id)
  	end

  	def api
  		@api_key = ENV["api_key"]
  		render :json => {api_key:@api_key}
  	end

end





