# frozen_string_literal: true

# good
class User < ApplicationRecord
  has_many :schedules
  has_many :reports
  has_one :user_role
  validates :name, :email, presence: true

  mount_uploader :avatar, AvatarUploader
  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  scope :online_users, -> { pluck(:id).delete_if { |user_id| !User.find(user_id).online? } }

  def online?
    if current_sign_in_at.present?
      last_sign_out_at.present? ? current_sign_in_at > last_sign_out_at : true
    else
      false
    end
  end
end
