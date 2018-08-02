class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up , keys:[:firstname, :email, :password,:lastname,:phonenumber,:job,:gender,:age,:reference_note] )
            devise_parameter_sanitizer.permit(:account_update , keys:[:firstname, :email, :password , :current_password,:lastname,:phonenumber,:job,:gender,:age,:reference_note])
        end

end
