class User < ApplicationRecord
  has_many :reports
  has_one :user_role
  validates :name, :email, presence: true
  validates :telegram_id, length: { is: 5 }, allow_blank: true

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
end
