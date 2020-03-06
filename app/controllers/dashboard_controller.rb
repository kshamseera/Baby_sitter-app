class DashboardController < ApplicationController
    before_action :authenticate_user!

    def index
       @booking_details = BookingDetail.where(user_id: current_user.id) 
       @baby_sitter = BabySitterRegistration.where(user_id: current_user.id)   
    end
end
