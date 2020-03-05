class HomeController < ApplicationController
    def index
        if params[:city]
            # byebug
            @babysitters = BabySitterRegistration.where('lower(city) = ?', params[:city].strip.downcase)
           else
            
            @babysitters = BabySitterRegistration.all
          end
    end
end
