class ListingsController < ApplicationController
 
  def index
    # list all  baby sitters corresponding to the city in the search field
    @babysitters = BabySitterRegistration.where('lower(city) = ?', params[:city].strip.downcase)
    if @babysitters.empty?
        redirect_to home_index_path, notice: "Sorry there is no baby sitters available in #{ params[:city].upcase} at this moment!"
    end 
  end 
end
