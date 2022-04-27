# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:zip, :address, :profile])
    devise_parameter_sanitizer.permit(:account_update, keys: [:zip, :address, :profile])
  end

  # private

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:profile])
  # end

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:profile])
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:address])
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:zip])
  # end
end
