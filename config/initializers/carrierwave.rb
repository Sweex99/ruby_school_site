require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
    config.storage = :fog
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
    config.fog_provider= 'fog/aws'
    config.fog_credentials = {
        :provider              => 'AWS',
        :aws_access_key_id     => '',
        :aws_secret_access_key => '',
        :region                => 'eu-north-1'
    }
    config.fog_directory = 'rschool'

end