require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.staging? || Rails.env.production?
    config.storage = :fog
    config.fog_credentials = {
        :provider              => 'AWS',
        :aws_access_key_id     => 'AKIAJAWUB33VPAKIEEZQ',
        :aws_secret_access_key => '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',
        :region                => 'eu-north-1'
    }
    config.fog_directory = 'rschool'
  else
    config.storage = :file
    config.enable_processing = Rails.env.development?
  end
end