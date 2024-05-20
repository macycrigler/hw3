class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(params["place"])
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end

  def show
    # find a Company
    @place = Place.find_by({"id" => params["id"]})
    # render companies/show view with details about Company
  end
end
