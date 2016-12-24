class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :company_name, :contact_phone, :web_address, :team_size, :password, :email])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
    end
end
