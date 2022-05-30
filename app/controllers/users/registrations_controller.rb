# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  protected

  def update_resource(resource, params)
    if params[:password].blank?
      resource.update_without_password(params.reject { |key| key == 'current_password' })
    else
      resource.update_with_password(params)
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  end

  # The path used after sign up.

  # The path used after sign up for inactive accounts.
end
