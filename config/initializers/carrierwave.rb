require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['S3_ACCESS_KEY'],
    aws_secret_access_key: ENV['S3_SECRET_KEY'],
    region: ENV['S3_REGION']
  }
  config.fog_directory = 'rschool'
end
