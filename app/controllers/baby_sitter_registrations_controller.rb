class BabySitterRegistrationsController < ApplicationController
    before_action :authenticate_user!

    def new
        @baby_sitter = BabySitterRegistration .new
    end

    def create
        @baby_sitter = BabySitterRegistration.new(baby_sitter_registration_params)
        @baby_sitter.user_id=current_user.id
       
        if(@baby_sitter.save)
            redirect_to @baby_sitter
        else
            render 'new'
        end
    end
    def show
        @baby_sitter= current_user.baby_sitter_registration
    end
    private

    def baby_sitter_registration_params
        params.require(:baby_sitter_registration).permit(:first_name,:last_name, :gender, :country,:city, :language, :description, :available_date,:amount,:upload_cv, :upload_image)
    end
      
end
