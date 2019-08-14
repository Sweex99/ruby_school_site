# frozen_string_literal: true

# good
class Post < ApplicationRecord
  mount_uploader :logo, PostLogoUploader
  scope :test, -> { where('created_at >= :one_days_ago', one_days_ago: Time.now - 1.minutes)}
end
