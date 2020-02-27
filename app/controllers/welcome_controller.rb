class WelcomeController < ApplicationController
  def index
    if params[:city]
      @babysitters = BabySitterRegistration.where(city: params[:city])
     else
      @babysitters = BabySitterRegistration.all
    end
  end
end
