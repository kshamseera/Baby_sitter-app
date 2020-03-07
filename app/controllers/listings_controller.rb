class ListingsController < ApplicationController
 
  def index
    # if params[:city]
      # byebug
    @babysitters = BabySitterRegistration.where('lower(city) = ?', params[:city].strip.downcase)
    if @babysitters.empty?
      flash.now[:notice] = "Sorry there is no baby sitters in #{ params[:city]} at this moment!"
      @babysitters = BabySitterRegistration.all
    end
    # raise
  end 
end
