# frozen_string_literal: true

module Users
  # devise class for sing in user
  class SessionsController < Devise::SessionsController
    layout 'sessionorregister'
    # before_action :configure_sign_in_params, only: [:create]

    # POST /resource/sign_in
    def create
      redirect_back(fallback_location: root_path)
    end

    # DELETE /resource/sign_out
    def destroy
      current_user.update_attribute(:last_sign_out_at, Time.now)
      super
    end

    # protected

    # If you have extra params to permit, append them to the sanitizer.
    # def configure_sign_in_params
    #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
    # end
    #
    #
  end
end
