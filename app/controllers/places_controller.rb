class PlacesController < ApplicationController
def index
    @places = Place.all
  end
  def show
  @place = Place.find_by({ "id" => params["id"] })
  @entries = Entry.where({ "place_id" => @place["id"] })
end
def new
  end
  def create
  # 1. Create a new Place object
  @place = Place.new
  # 2. Assign the name from the form data (params)
  @place["name"] = params["name"]
  # 3. Save it to the database
  @place.save
  # 4. Redirect back to the list
  redirect_to "/places"
end
end
