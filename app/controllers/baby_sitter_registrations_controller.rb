class BabySitterRegistrationsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_babysitter,only: [:edit, :update, :destroy]
    before_action :authorise_user!, only: [:edit, :update, :destroy]

    def new
        @baby_sitter = BabySitterRegistration.new
    end

    def create
        @baby_sitter = BabySitterRegistration.new(baby_sitter_registration_params)
        @baby_sitter.user_id=current_user.id
       
        if(@baby_sitter.save)
            redirect_to "/"
        else
            render 'new'
        end
    end

    def show
        @baby_sitter= BabySitterRegistration.find(params[:id])
    end

    def update
        if (@babysitter.update(baby_sitter_registration_params))
            redirect_to  dashboard_index_path, notice: "UPDATED!"
        else
            render 'edit'
        end
    end

    # def destroy
    #     @babysitter.delete

    #     redirect_to  "/"
    # end

    private

    def baby_sitter_registration_params
        params.require(:baby_sitter_registration).permit(:first_name,:last_name, :gender, :country,:city, :language, :description, :available_date,:amount, :upload_image)
    end

    def find_babysitter
        @babysitter = BabySitterRegistration.find(params[:id])
    end

    def authorise_user!
        return true if current_user.id == @babysitter.user_id
    end
end
