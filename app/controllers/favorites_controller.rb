class FavoritesController < ApplicationController

  def index
    # a GET request that returns a JSON for every favorite object belonging to that user
    @favoritee = Favorite.new
  end

  def create
    # take a favorite object that the user will pass through the POST params and insert it into the DB; use find_or_create_by

    Favorite.find_or_create_by(route: route)
  end

  def destroy
    
    @favorite = Favorite.find(params[:favorite])
    @favorite.destroy
  end
end



# check for changes in the checkbox through a jQuery event listener
# //when the checkbox is loaded, use ERB <%= checked = true %> (or something like that) to determine if it starts out as checked or not via a database query
# //when that status changes, if the new state is checked, then do your POST request to connect to the Create function, otherwise do Delete

# Add a new dropdown menu to the front page that captures the user's favorites
# Upon click, make the  -->

