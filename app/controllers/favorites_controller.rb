class FavoritesController < ApplicationController

  def index
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)

    @favorite.user = current_user
    
    if @favorite.save
    	redirect_to :back
    end
  end

  def destroy 
    @favorite = Favorite.find(params[:favorite])
    @favorite.destroy
  end

  private

  def favorite_params
  	params.require(:favorite).permit(:busroute)
  end
end




