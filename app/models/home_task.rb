# frozen_string_literal: true

# good
class HomeTask < ApplicationRecord
  scope :alert, -> { where('date_task >= :now ', now: Time.now).where(class_room: 5) }
end
