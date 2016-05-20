class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # configuration for devise controller

  before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            # params.require(:sign_up).permit(:name, :is_female, :date_of_birth, :email, :password, :password_confirmation)
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :is_female, :date_of_birth, :email, :password, :password_confirmation) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :is_female, :date_of_birth) }
            # params.require(:account_update).permit(:name, :is_female, :date_of_birth, :email, :password, :current_password )
        end
end
