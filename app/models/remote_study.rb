class RemoteStudy < ApplicationRecord

  scope :disactive, -> { where("active_to <= :now", active: true , now: Time.now ) }
end
