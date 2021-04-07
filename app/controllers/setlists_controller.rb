class SetlistsController < ApplicationController
before_action :set_band 

  def index
    @setlists= @band.setlists.order("setdate desc")
  end

  def show
    @setlist = @band.setlists.find(params[:id])
    @titles = @band.titles 
    @settitel_ids = @setlist.settitels.pluck(:title_id)
    @settitels = @setlist.settitels.order("round", "number")
  end

  private 

  def set_band 
    @band =  Band.find(params[:band_id])
  end

end