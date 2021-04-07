class TitlesController < ApplicationController
  before_action :set_band 


  def index
    @titles=@band.titles 
  end


  private 

  def set_band 
    @band =  Band.find(params[:band_id])
  end

end
