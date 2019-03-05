# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    unless Stat.where(:id_user => current_user.id)
      Stat.create(:id_user => current_user.id)
    end
  end

  # DELETE /resource/sign_out
  def destroy
    if Stat.where(:id_user => current_user.id)
      Stat.where(:id_user => current_user.id).destroy_all
      sign_out_and_redirect(current_user)
    end
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
