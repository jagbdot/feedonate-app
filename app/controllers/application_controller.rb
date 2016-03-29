class ApplicationController < ActionController::Base
  
  unless Rails.env.development?
    protect_from_forgery with: :exception
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :city, :address, :phone, :email, :password, :type_of_user) }
    end
end
