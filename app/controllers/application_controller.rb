class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:password,:first_name,:last_name,:first_name_kana,:last_name_kana,:birth_day])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end


end
