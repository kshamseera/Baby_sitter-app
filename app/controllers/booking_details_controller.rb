class BookingDetailsController < ApplicationController

    def new
        @booking = BookingDetail.new
    end

    def create
        @booking = BookingDetail.new(booking_params)
        # @booking.user_id=current_user.id
    
        if(@booking.save)
            redirect_to @booking
        else
            render 'new'
        end
    end

    private
    def booking_params
        params.require(:booking_detail).permit(:name, :age, :number, :country, :city, :date, :message)
    end
end
