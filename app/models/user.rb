class User < ApplicationRecord
  before_create :set_default_avatar

  mount_uploader :avatar, AvatarUploader
  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  #attr_accessor :name, :email, :password, :password_confirmation, :remember_me

  scope :online_users, -> { self.pluck(:id).delete_if { |user_id| !User.find(user_id).online? } }

  def online?
    if current_sign_in_at.present?
      last_sign_out_at.present? ? current_sign_in_at > last_sign_out_at : true
    else
      false
    end
  end

  def set_default_avatar
    nil ? 'default_avatar' : ''
  end

  protected
  def confirmation_required?
    false
  end
end
