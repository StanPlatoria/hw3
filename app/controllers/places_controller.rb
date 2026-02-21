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
end
