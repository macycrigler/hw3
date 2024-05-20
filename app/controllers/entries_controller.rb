class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
    @entry.place_id = params["company_id"]
  end

end
