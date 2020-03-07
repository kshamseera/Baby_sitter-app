class DashboardController < ApplicationController
    before_action :authenticate_user!

    def index
        # User booking details
       @booking_details = BookingDetail.where(user_id: current_user.id) 
       @baby_sitter = BabySitterRegistration.where(user_id: current_user.id)  
       # Babysitter booking details
       @babysitter_booking = BookingDetail.where(baby_sitter_registration: current_user.baby_sitter_registration)
        # raise
    end
end
