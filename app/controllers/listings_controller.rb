class ListingsController < ApplicationController
 
  def index
    # if params[:city]
      # byebug
    @babysitters = BabySitterRegistration.where('lower(city) = ?', params[:city].strip.downcase)
    if @babysitters.empty?
        redirect_to home_index_path, notice: "Sorry there is no baby sitters in #{ params[:city].upcase} at this moment!"
      # @babysitters = BabySitterRegistration.all
    end
    # raise
  end 
end
