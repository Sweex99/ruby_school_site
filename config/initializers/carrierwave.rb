require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
    config.storage = :fog
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
    config.fog_provider= 'fog/aws'
    config.fog_credentials = {
        :provider              => 'AWS',
        :aws_access_key_id     => 'AKIAI5IGMA3FBP7GK72A',
        :aws_secret_access_key => '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',
        :region                => 'eu-north-1'
    }
    config.fog_directory = 'rschool'

end