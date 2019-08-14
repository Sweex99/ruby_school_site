# frozen_string_literal: true

# good
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
