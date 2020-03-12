class BookingDetailsController < ApplicationController
before_action :authenticate_user!
before_action :find_booking,only: [:edit,:update,:destroy]
before_action :authorise_user!,only: [:edit,:update,:destroy]

def index
end
   #Display booking details of a user
   def show
    @booking = BookingDetail.find(params[:id])
  end
    # making new booking for a particular baby sitter
    def new
        @booking = BookingDetail.new
        @babysitter_id = params[:babysitter_id]
        @baby_sitter_registration = BabySitterRegistration.find(params[:baby_sitter_registration_id])
    end

    def create
        @baby_sitter_registration = BabySitterRegistration.find(params[:baby_sitter_registration_id])
        @booking = BookingDetail.new(booking_params)
        @booking.user_id=current_user.id
        @booking.baby_sitter_registration_id = params[:baby_sitter_registration_id]
        @booking.status = "Pending"
        if(@booking.save)
            redirect_to [@baby_sitter_registration, @booking],notice: "Booking Confirmed"
        else
            render 'new'
        end
    end
    
    # edit the booking details
    def edit
        @babysitter_id = @booking.baby_sitter_registration.id
      end

    def update
        if (@booking.update(booking_params))
            # redirect_to @booking
            redirect_to  dashboard_index_path, notice: "UPDATED!"
        else
            render 'edit'
        end
    end
    # delete a booking details
    def destroy
        @booking.delete
        redirect_to  dashboard_index_path
    end


    private

    def booking_params
        params.require(:booking_detail).permit(:name, :age, :number, :city, :date, :message, :baby_sitter_registration_id, :user_id)
    end

    def find_booking
        @booking = BookingDetail.find(params[:id])
    end

    def authorise_user!
        return true if current_user.id == @booking.user_id
    end
end
