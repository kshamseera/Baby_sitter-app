class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_in, keys: [ :user_name])

      devise_parameter_sanitizer.permit(:sign_up,
        keys: [:username, :email, :password, :password_confirmation , :is_baby_sitter])
      devise_parameter_sanitizer.permit(:sign_in,
        keys: [:email, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:account_update,
        keys: [:username, :email, :password_confirmation, :current_password,])
    
  end

 
  
end
