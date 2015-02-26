class BusesController < ApplicationController
	include HTTParty
	
	def new
    	@bus = Bus.find_or_create_by(bus_id: bus_id)
  	end

  	def api
  		@api_key = ENV["api_key"]
  		@url = HTTParty.get("https://api.wmata.com/Bus.svc/json/jRoutes?api_key=#{@api_key}")
  		render :json => {url: @url}
  	
  	end

end







