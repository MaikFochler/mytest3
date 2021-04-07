class BandsController < ApplicationController
  before_action :set_band, only: [:show, :titlelist]

  def index
    @bands = Band.all.order("id") 
  end

  def show
  end

  def titlelist
  end


  private
  def set_band
    @band = Band.find(params[:id])
  end
  
  def band_params
    params.require(:band).permit(:bandname)
  end 




end
