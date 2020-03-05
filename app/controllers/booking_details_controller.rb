class BookingDetailsController < ApplicationController
before_action :authenticate_user!
before_action :find_booking,only: [:edit,:update,:destroy]
before_action :authorise_user!,only: [:edit,:update,:destroy]
   def index
    end

    def show
        @booking = BookingDetail.find(params[:id])
    end

    def new
        @booking = BookingDetail.new
        @babysitter_id = params[:babysitter_id]
    end

    def create
        @booking = BookingDetail.new(booking_params)
        @booking.user_id=current_user.id
        @booking.baby_sitter_registration_id = params[:booking_detail][:baby_sitter_registration_id]

        if(@booking.save)
            redirect_to @booking
        else
            render 'new'
        end
    end

    def update
        if (@booking.update(booking_params))
            redirect_to @booking
        else
            render 'edit'
        end
    end

    def destroy
        @booking.delete
        redirect_to  baby_sitter_registrations_path
    end


    private

    def booking_params
        params.require(:booking_detail).permit(:name, :age, :number, :country, :city, :date, :message, :baby_sitter_registration_id, :user_id)
    end

    def find_booking
        @booking = BookingDetail.find(params[:id])
    end

    def authorise_user!
        return true if current_user.id == @booking.user_id
    end
end
